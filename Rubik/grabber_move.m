function [] = grabber_move(grabber)
    grabber.limitValue = 360;
    grabber.power = 40;
    grabber.start();
    grabber.waitFor();
end

