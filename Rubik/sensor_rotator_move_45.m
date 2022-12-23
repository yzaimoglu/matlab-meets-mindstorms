function [] = sensor_rotator_move_45(rotator, direction)
    rotator.power = 30;
    if strcmp(direction, 'left')
        rotator.power = 1* rotator.power;
    else
        rotator.power = -1 * rotator.power;
    end
    rotator.limitValue = 53;
    rotator.start();
    rotator.waitFor();
end

