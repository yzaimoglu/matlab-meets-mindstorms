function [cube] = sensor_scan(rotator, sensorMotor, sensor)
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();
    
    pause(1);
    
    order = [8,7,4,1,2,3,6,9]
    
    cube = zeros(3,3,6);
    cube(getPos(1,5)) = 1;
    cube(getPos(2,5)) = 2;
    cube(getPos(3,5)) = 3;
    cube(getPos(4,5)) = 4;
    cube(getPos(5,5)) = 5;
    cube(getPos(6,5)) = 6;
    
    for i = 1:length(order)
        cube(getPos(1, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(8);
    
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();
    
    for i = 1:length(order)
        cube(getPos(2, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(8);
    
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();

    for i = 1:length(order)
        cube(getPos(3, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(8);
    
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();
    
    for i = 1:length(order)
        cube(getPos(4, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(8);
    
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();
    
    for i = 1:length(order)
        cube(getPos(5, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(8);
    
    sensorMotor.limitValue = 675;
    sensorMotor.power = -25;
    sensorMotor.start();
    sensorMotor.waitFor();
    
    for i = 1:length(order)
        cube(getPos(6, order(i))) = get_color_from_reflect(sensor.value);
        sensor_rotator_move_45(rotator, 'right');
        pause(2);
    end
    
    pause(3);
    
    sensorMotor.power = sensorMotor.power * -1;
    sensorMotor.start();
    sensorMotor.waitFor(); 
    
    pause(9);
    function pos = getPos(color,position)
        pos = (color-1) * 9 + position;
    end
end

