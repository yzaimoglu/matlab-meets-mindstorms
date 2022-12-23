%% Stage 0: Connection and Initialization of sensors
stage = 0;
b = connect();
[buttonSensor, colorSensor] = init_sensors(b);
[conveyor, bgMotor, ryMotor] = init_motors(b);

conveyor.start();

while buttonSensor.value == 1
    %% Stage 1: Read values from distanceSensor until a brick passes by
    % stage = 1;
    % values = [];
    % 
    % while stage == 1
    %     values = read_values(distanceSensor);
    %     diffValues = diff(values);
    %     if diffValues(end) >= -100
    %         stage = 2;
    %     end
    % end
    % 
    % pause(1);

    %% Stage 2: Read color value and decide when to start the moto
    stage = 2;
    colorValue = colorSensor.value;
    while stage == 2
        if colorValue ~= colorSensor.value
            stage = 3;
            colorValue = colorSensor.value;
        end
    end

    %% Stage 3: Switch colors
    stage = 3;
    switch colorValue
        case 2 % Weiß
        case 3 % Blau, Grün
            pause(0.45);
            motor_start(bgMotor);
        case 5 % Orange, Rot
            pause(1);
            motor_start(ryMotor);
        case 7 % Gelb
    end

    display(colorValue);

    %% Stage 4: 
    stage = 4;
end

%% Stage X: Stop program
conveyor.stop();
disconnect(b);