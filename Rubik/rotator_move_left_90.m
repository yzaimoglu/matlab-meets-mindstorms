function [] = rotator_move_left_90(rotator)
    rotator.power = 30;
    rotator.limitValue = 340; % 1145 = 360
    rotator.start();
    rotator.waitFor();
    
    rotator.power = -30;
    rotator.limitValue = 30;
    rotator.start();
    rotator.waitFor();
end

