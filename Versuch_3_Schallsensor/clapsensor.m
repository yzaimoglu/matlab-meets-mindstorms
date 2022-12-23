function clapsensor()
% open a new object
ev3_obj=EV3();
ev3_obj.connect('usb','beep','on');

% set mode to dB
ev3_obj.sensor1.mode = DeviceMode.NXTSound.DB;

% clap detection threshold
clapThreshold = 10;
numSamples = 15;

% initialize sample array and state of lamps
values = zeros(numSamples, 1);
changes = zeros(numSamples - 1, 1);
states = [0 0 0];

% initially, create the figure without data, all lamps off
plot_handles = []; % will be initiliazed by clapsensorPlot
plot_handles = clapsensorPlot(plot_handles, values, values, [0 0 0], 0);

max_iterations = 50;
iterations = 0;
claps = 0;
while iterations < max_iterations  && isvalid(plot_handles.h_fig)
% start loop
    iterations = iterations + 1;
    %if mod(iterations, numSamples) == 0
    %    claps = 0;
    %    states = zeros(3,1);
    %end
    
    switch claps
        case 0
            states = zeros(3,1);
        case 1
            states = [1,0,0];
        case 2
            states = [1,1,0];
        case 3
            states = [1,1,1];
    end
    
    % get a new sample from the sensor    
    s =  ev3_obj.sensor1.value();
    
    size_values = size(values);
    
    % throw away oldest sample and add the new one at the end
    if size_values(1) >= 15
        new_vector = values(2:end);
        new_vector(end+1) = s;
        values = new_vector;
    end
   
    changes = diff(values);
    
    claps = 0;
    for diffIteration = 1:(numSamples-1)
        if changes(diffIteration) >= 10
           claps = claps +1;
        end
    end
    
    if claps >= 3
       claps = 3;
    end
    
%    if changes(end) >= 30
%%         if states(claps+1) == 0
%%             states(claps+1) = 1;
%%         else
%%             states(claps+1) = 0;
%%         end
%         states(claps+1) = 1;
%         if claps ~= 3
%            claps = claps +1;
%         end
%    end
        
    % display plot and lamps
    clapsensorPlot(plot_handles, values, changes, states, clapThreshold);
    
    % wait 10ms between samples
    pause(0.01);
end

% close object
ev3_obj.disconnect();
end
