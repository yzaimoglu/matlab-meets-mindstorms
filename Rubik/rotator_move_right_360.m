function [] = rotator_move_right_360(rotator)
    rotator.power = -30;
    rotator.limitValue = 1145; % 1145 = 360
    rotator.start();
    rotator.waitFor();
    
    rotator.power = 30;
    rotator.limitValue = 30;
    rotator.start();
    rotator.waitFor();
end

