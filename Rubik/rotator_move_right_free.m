function [] = rotator_move_right_free(grabber, rotator, direction)
    grabber.power = 30;
    grabber.limitValue = 210;
    grabber.start();
    grabber.waitFor();
    
    if strcmp(direction, 'right')
        rotator.power = 1* rotator.power;
    else
        rotator.power = -1 * rotator.power;
    end
    rotator.limitValue = 230;
    rotator.start();
    rotator.waitFor();
    
    grabber.limitValue = 150;
    grabber.start();
    grabber.waitFor();
    
    grabber_move(grabber);
    grabber_move(grabber);
    grabber_move(grabber);
end

