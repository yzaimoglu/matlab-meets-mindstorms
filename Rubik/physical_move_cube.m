function [] = physical_move_cube(grabber, rotator, move)
    switch move
        case 'U'
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_right_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
        case 'U'''
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_left_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
        case 'L'
            grabber_move(grabber);
            pause(0.2);
            rotator_move_right_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
        case 'L'''
            grabber_move(grabber);
            pause(0.2);
            rotator_move_left_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
        case 'F'
            rotator_move_90_free(grabber, rotator, 'right');
            grabber_move(grabber);
            grabber_move(grabber);
            grabber_move_special(grabber, 'F');
            rotator_move_right_90(rotator);
            grabber_move(grabber);
            rotator_move_90_free(grabber, rotator, 'left');
            grabber_move(grabber);
            grabber_move(grabber);
            grabber_move(grabber);
            grabber_move(grabber);
        case 'F'''
            rotator_move_90_free(grabber, rotator, 'left');
            grabber_move(grabber);
            rotator_move_left_90(rotator);    
            grabber_move(grabber);
            grabber_move(grabber);
            grabber_move(grabber);
            rotator_move_90_free(grabber, rotator, 'right');
        case 'R'
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_right_90(rotator);
            pause(0.2);
            grabber_move(grabber);
        case 'R'''
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_left_90(rotator);
            pause(0.2);
            grabber_move(grabber);
        case 'B'
            rotator_move_90_free(grabber, rotator, 'right');
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_right_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_90_free(grabber, rotator, 'right');
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2)
        case 'B'''
            rotator_move_left_90(rotator);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_90_free(grabber, rotator, 'right');
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            grabber_move(grabber);
            pause(0.2);
            rotator_move_90_free(grabber, rotator, 'left');
        case 'D'
            rotator_move_right_90(rotator);
            pause(0.2);
        case 'D'''
            rotator_move_left_90(rotator);
            pause(0.2);
    end
end

