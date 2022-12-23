function [] = turn(b, direction, degree)

    b.motorA.power = direction*-20;
    b.motorD.power = direction*20;

    factor = 2.66; % 90°
    one_deg = factor / 90;

    b.motorA.start();
    b.motorD.start();

    pause(one_deg * degree);

    b.motorA.stop();
    b.motorD.stop();

end