%% Aufgabe Zahlendarstellung c)
% Template


%%  ----- MATLAB Calculation -----

b = EV3();
b.connect('usb');
 

%% Get two numbers from user dialog
% Tips:
% * use MATLAB command "inputdlg".
% * see MATLAB help for usage and more information.
% * convert the reponse cell array into numbers using "str2double"
%
prompt = {'Gebe die erste Zahl ein:','Gebe die zweite Zahl ein:'};
dlgtitle = 'Eingabe';
answer = inputdlg(prompt,dlgtitle);

%% Initialize figures
plot_number_face;   % plot calculator face figure
hold on             % hold on flag to plot more plots into the calculator face figure

%% Calculate the summation of the two numbers
% ... insert here your code
first_num = str2num(answer{1});
second_num = str2num(answer{2});

sum = first_num + second_num;
display(sum);

sum_str = num2str(sum);

type = 1;

if sum < 9
    first_char = str2num(sum_str(1));
elseif sum < 99
    first_char = str2num(sum_str(1));
    second_char = str2num(sum_str(2));
    type = 2;
elseif sum < 999
    first_char = str2num(sum_str(1));
    second_char = str2num(sum_str(2));
    third_char = str2num(sum_str(3));
    type = 3;
elseif sum < 9999
    first_char = str2num(sum_str(1));
    second_char = str2num(sum_str(2));
    third_char = str2num(sum_str(3));
    fourth_char = str2num(sum_str(4));
    type = 4;
else
    display('Das Programm kann nur Summen bis 9999 darstellen.')
    return;
end


%% Calculate pointers to plot
% Tips:
% * for line plotting only the start and end point of the line has to be given
% * the rotated pointers can be easily constructed by a complex number (value and phase)
% * the length of the complex vectors should be different for both pointers and less than one
% * note the number zero is located at the coordinates (x,y) = (0,1) or (0,i) respectively
% * take care to use degrees or radian
% * consider only angles which are related to the exact number position. Angles between two
% numbers should be neglected.
switch type
    case 1
        [positionX, positionY] = getposition(first_char);
        x = [0 positionX-positionX*0.5];
        y = [0 positionY-positionY*0.5];
        plot(x,y, 'LineWidth', 3);
        
        b.motorB.power = -80;
        b.motorB.brakeMode = 'Brake';
        b.motorB.limitValue = 1546 * first_char;
        b.motorB.start();
        b.motorB.waitFor();
        
        pause(5);
        
        b.motorB.power = 80;
        b.motorB.start();
        b.motorB.waitFor();
    case 2
        [positionX, positionY] = getposition(second_char);
        x = [0 positionX-positionX*0.5];
        y = [0 positionY-positionY*0.5];
        plot(x,y, 'LineWidth', 3); 
        [positionX, positionY] = getposition(first_char);
        x = [0 positionX];
        y = [0 positionY];
        plot(x,y, 'LineWidth', 3); 
        
        b.motorA.power = 20;
        b.motorA.brakeMode = 'Brake';
        b.motorA.limitValue = 36 * first_char;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = -80;
        b.motorB.brakeMode = 'Brake';
        b.motorB.limitValue = 1546 * second_char;
        b.motorB.start();
        b.motorB.waitFor();
        
        pause(5);
        
        b.motorA.power = -20;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = 80;
        b.motorB.start();
        b.motorB.waitFor();
    case 3
        [positionX, positionY] = getposition(third_char);
        x = [0 positionX-positionX*0.5];
        y = [0 positionY-positionY*0.5];
        plot(x,y, 'LineWidth', 3); 
        [positionX, positionY] = getposition(second_char);
        x = [0 positionX];
        y = [0 positionY];
        plot(x,y, 'LineWidth', 3);
        
        b.motorA.power = 20;
        b.motorA.brakeMode = 'Brake';
        b.motorA.limitValue = 36 * second_char;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = -80;
        b.motorB.brakeMode = 'Brake';
        b.motorB.limitValue = 1546 * third_char;
        b.motorB.start();
        b.motorB.waitFor();
        
        pause(5);
        
        b.motorA.power = -20;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = 80;
        b.motorB.start();
        b.motorB.waitFor();
        
        for i = 1:first_char
            b.beep();
            pause(1);
        end
    case 4
        [positionX, positionY] = getposition(fourth_char);
        x = [0 positionX-positionX*0.5];
        y = [0 positionY-positionY*0.5];
        plot(x,y, 'LineWidth', 3 ); 
        [positionX, positionY] = getposition(third_char);
        x = [0 positionX];
        y = [0 positionY];
        plot(x,y, 'LineWidth', 3);
        
        b.motorA.power = 20;
        b.motorA.brakeMode = 'Brake';
        b.motorA.limitValue = 36 * third_char;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = -80;
        b.motorB.brakeMode = 'Brake';
        b.motorB.limitValue = 1546 * fourth_char;
        b.motorB.start();
        b.motorB.waitFor();
        
        pause(5);
        
        b.motorA.power = -20;
        b.motorA.start();
        b.motorA.waitFor();
        
        b.motorB.power = 80;
        b.motorB.start();
        b.motorB.waitFor();
        
        for i = 1:second_char
            b.beep();
            pause(1);
        end

        pause(1);
        
        for ij = 1:first_char
            b.playTone(10,1500,100);
            pause(1);
        end
end


%% Plot pointers into the figure
% Tips:
% * for line plotting only the start and end point of the line has to be given
% * use different colors for the pointers
%
% ... insert here your code




%% Mindstorms NXT - Control
%

%%
% *Program the Mindstorms machine*
%
% ... insert here your code

b.disconnect();
