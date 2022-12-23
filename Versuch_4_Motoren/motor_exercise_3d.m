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
prompt = {'Gebe die erste komplexe Zahl ein:','Gebe die zweite komplexe ein:', 'Gebe die Rechenart an:'};
dlgtitle = 'Eingabe';
answer = inputdlg(prompt,dlgtitle);

%% Initialize figures
% plot calculator face figure

%% Calculate the summation of the two numbers
% ... insert here your code
first_num = str2double(answer{1});
second_num = str2double(answer{2});
type = answer{3};

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
    case 'mul'
        mul = first_num * second_num;        
        compA = compass(mul);
        compA.Color = 'blue';
        compA.LineWidth = 2;
        hold on
        
        compB = compass(first_num);
        compB.Color = 'red';
        compB.LineWidth = 2;
        
        compC = compass(second_num);
        compC.Color = 'green';
        compC.LineWidth = 2;
        
        [angle, powerMultA] = getangle(first_num);
        motorAChangePos(b, powerMultA, angle);
        
        pause(1);
        
        [angle, powerMultB] = getangle(second_num);
        motorBChangePos(b, powerMultB, angle);
        
        pause(4);
        
        motorABGoBack(b, powerMultA, powerMultB);
        
        pause(2);
        
        [angle, powerMult] = getangle(mul);
        
        motorAChangePos(b, powerMult, angle);
        
        pause(3);
        
        motorAGoBack(b, powerMult);
    case 'div'
        div = first_num / second_num;
        
        compA = compass(div);
        compA.Color = 'blue';
        compA.LineWidth = 2;
        hold on
        
        compB = compass(first_num);
        compB.Color = 'red';
        compB.LineWidth = 2;
        
        compC = compass(second_num);
        compC.Color = 'green';
        compC.LineWidth = 2;
        
        [angle, powerMultA] = getangle(first_num);
        motorAChangePos(b, powerMultA, angle);
        
        pause(1);
        
        [angle, powerMultB] = getangle(second_num);
        motorBChangePos(b, powerMultB, angle);
        
        pause(4);
        
        motorABGoBack(b, powerMultA, powerMultB);
        
        pause(2);
        
        [angle, powerMult] = getangle(div);
        
        motorAChangePos(b, powerMult, angle);
        
        pause(3);
        
        motorAGoBack(b, powerMult);
    case 'conj'
        conjNum = conj(first_num);
        
        compA = compass(conjNum);
        compA.Color = 'blue';
        compA.LineWidth = 2;
        hold on
        
        compB = compass(first_num);
        compB.Color = 'red';
        compB.LineWidth = 2;
        
        [angle, powerMultA] = getangle(first_num);
        motorAChangePos(b, powerMultA, angle);
        
        pause(1);
        
        [angle, powerMultB] = getangle(conjNum);
        motorBChangePos(b, powerMultB, angle);
        
        pause(4);
        
        motorABGoBack(b, powerMultA, powerMultB);
    case 'sqrt'
        sqrtNum = sqrt(first_num);
        
        compA = compass(first_num);
        compA.Color = 'blue';
        compA.LineWidth = 2;
        hold on
        
        compB = compass(sqrtNum);
        compB.Color = 'red';
        compB.LineWidth = 2;
        
        [angle, powerMultA] = getangle(first_num);
        motorAChangePos(b, powerMultA, angle);
        
        pause(1);
        
        [angle, powerMultB] = getangle(sqrtNum);
        motorBChangePos(b, powerMultB, angle);
        
        pause(4);
        
        motorABGoBack(b, powerMultA, powerMultB);
       
%     case 'div'
%         [positionX, positionY] = getposition(second_char);
%         x = [0 positionX-positionX*0.5];
%         y = [0 positionY-positionY*0.5];
%         plot(x,y, 'LineWidth', 3); 
%         [positionX, positionY] = getposition(first_char);
%         x = [0 positionX];
%         y = [0 positionY];
%         plot(x,y, 'LineWidth', 3); 
%         
%         b.motorA.power = 20;
%         b.motorA.brakeMode = 'Brake';
%         b.motorA.limitValue = 36 * first_char;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = -80;
%         b.motorB.brakeMode = 'Brake';
%         b.motorB.limitValue = 1546 * second_char;
%         b.motorB.start();
%         b.motorB.waitFor();
%         
%         pause(5);
%         
%         b.motorA.power = -20;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = 80;
%         b.motorB.start();
%         b.motorB.waitFor();
%     case 'conj'
%         [positionX, positionY] = getposition(third_char);
%         x = [0 positionX-positionX*0.5];
%         y = [0 positionY-positionY*0.5];
%         plot(x,y, 'LineWidth', 3); 
%         [positionX, positionY] = getposition(second_char);
%         x = [0 positionX];
%         y = [0 positionY];
%         plot(x,y, 'LineWidth', 3);
%         
%         b.motorA.power = 20;
%         b.motorA.brakeMode = 'Brake';
%         b.motorA.limitValue = 36 * second_char;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = -80;
%         b.motorB.brakeMode = 'Brake';
%         b.motorB.limitValue = 1546 * third_char;
%         b.motorB.start();
%         b.motorB.waitFor();
%         
%         pause(5);
%         
%         b.motorA.power = -20;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = 80;
%         b.motorB.start();
%         b.motorB.waitFor();
%     case 'sqrt'
%         [positionX, positionY] = getposition(fourth_char);
%         x = [0 positionX-positionX*0.5];
%         y = [0 positionY-positionY*0.5];
%         plot(x,y, 'LineWidth', 3 ); 
%         [positionX, positionY] = getposition(third_char);
%         x = [0 positionX];
%         y = [0 positionY];
%         plot(x,y, 'LineWidth', 3);
%         
%         b.motorA.power = 20;
%         b.motorA.brakeMode = 'Brake';
%         b.motorA.limitValue = 36 * third_char;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = -80;
%         b.motorB.brakeMode = 'Brake';
%         b.motorB.limitValue = 1546 * fourth_char;
%         b.motorB.start();
%         b.motorB.waitFor();
%         
%         pause(5);
%         
%         b.motorA.power = -20;
%         b.motorA.start();
%         b.motorA.waitFor();
%         
%         b.motorB.power = 80;
%         b.motorB.start();
%         b.motorB.waitFor();
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
