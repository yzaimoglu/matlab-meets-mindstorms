function [] = grabber_move_special(grabber, move)
    if strcmp(move, 'F')  
        grabber.limitValue = 310;
        grabber.power = 40;
        grabber.start();
        grabber.waitFor();
    end
  
end

