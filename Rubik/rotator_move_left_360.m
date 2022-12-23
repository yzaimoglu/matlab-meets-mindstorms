function [] = rotator_move_left_360(rotator)
    rotator.power = 30;
    rotator.limitValue = 1145;
    rotator.start();
    rotator.waitFor();
    
    rotator.power = -30;
    rotator.limitValue = 30;
    rotator.start();
    rotator.waitFor();
end

