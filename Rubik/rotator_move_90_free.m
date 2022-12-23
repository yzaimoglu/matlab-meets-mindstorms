function [] = rotator_move_right_90_free(grabber, rotator, direction)
    grabber.power = 30;
    rotator.power = 30;
    
    grabber_move(grabber);
    grabber_move(grabber);
    grabber_move(grabber);
    
    grabber.limitValue = 210;
    grabber.start();
    grabber.waitFor();
    
    if strcmp(direction, 'left')
        rotator.power = 1* rotator.power;
    else
        rotator.power = -1 * rotator.power;
    end
    rotator.limitValue = 210;
    rotator.start();
    rotator.waitFor();
    
    grabber.limitValue = 150;
    grabber.start();
    grabber.waitFor();
end

