%% Aufgabe Motormessungen
% Template for exercise b) and c)


%% Open Bluetooth/USB connetion
b = EV3();
b.connect('usb', 'beep', 'on');


%% Set variables
limitMode = 'Tacho';
limitValue = 1000;
brakeMode = 'Brake';


%% Create motor object
motor = b.motorA;
motor.resetTachoCount();

%% Do three measurements
i = 0;
previousTimeStop = 0;

tachoCounts = [];
%speeds = [];
times = [];
iteration = [];
isRunnings = [];

%powerIterator = 0;

% while previousTimeStop <= 6
%     if ~motor.isRunning
%         powerIterator = powerIterator + 1;
%         if powerIterator > 3
%         else
%             switch powerIterator
%                 case 1
%                     motor.setProperties('power', 30, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
%                 case 2
%                     motor.setProperties('power', 50, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
%                 case 3
%                     motor.setProperties('power', 70, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
%             end
%             figure(powerIterator);
%             plot(times, tachoCounts);
%             motor.start();
%         end
%     end
%     timeStart = tic;
%     i = i + 1;
%     
%     tachoCount = motor.tachoCount;
%     isRunning = motor.isRunning;
%     
%     timeStop = toc(timeStart);
%     
%     previousTimeStop = previousTimeStop + timeStop;
%     display(previousTimeStop)
%     
%     tachoCounts(1) = [tachoCounts, tachoCount];
%     times = [times, previousTimeStop];
%     isRunnings = [isRunnings, isRunning];
% end

motor.setProperties('power', 30, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
motor.start();
while previousTimeStop <= 6
    timeStart = tic;
    i = i + 1;
    
    tachoCount = motor.tachoCount;
    isRunning = motor.isRunning;
    
    timeStop = toc(timeStart);
    
    previousTimeStop = previousTimeStop + timeStop;
    display(previousTimeStop)
    
    tachoCounts = [tachoCounts, tachoCount];
    times = [times, previousTimeStop];
    isRunnings = [isRunnings, isRunning];
end
figure(1);
title('Power');
hold all
plot(times, tachoCounts);
motor.stop();
motor.resetTachoCount();
i = 0;
previousTimeStop = 0;

tachoCounts = [];
%speeds = [];
times = [];
iteration = [];
isRunnings = [];

motor.setProperties('power', 50, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
motor.start();
while previousTimeStop <= 6
    timeStart = tic;
    i = i + 1;
    
    tachoCount = motor.tachoCount;
    isRunning = motor.isRunning;
    
    timeStop = toc(timeStart);
    
    previousTimeStop = previousTimeStop + timeStop;
    display(previousTimeStop)
    
    tachoCounts = [tachoCounts, tachoCount];
    times = [times, previousTimeStop];
    isRunnings = [isRunnings, isRunning];
end
plot(times, tachoCounts);
motor.stop();
motor.resetTachoCount();
i = 0;
previousTimeStop = 0;

tachoCounts = [];
%speeds = [];
times = [];
iteration = [];
isRunnings = [];

motor.setProperties('power', 70, 'limitMode', limitMode, 'limitValue', limitValue, 'brakeMode', brakeMode);
motor.start();
while previousTimeStop <= 6
    timeStart = tic;
    i = i + 1;
    
    tachoCount = motor.tachoCount;
    isRunning = motor.isRunning;
    
    timeStop = toc(timeStart);
    
    previousTimeStop = previousTimeStop + timeStop;
    display(previousTimeStop)
    
    tachoCounts = [tachoCounts, tachoCount];
    times = [times, previousTimeStop];
    isRunnings = [isRunnings, isRunning];
end
plot(times, tachoCounts);
motor.stop();
yline(1000);

%% Close NXT
b.disconnect();

%% Display permant motor position differences
% ...


%% Plot graphs
% ...