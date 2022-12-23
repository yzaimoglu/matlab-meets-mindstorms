function [angle, powerMult] = getangle(mul)
    mul_i = imag(mul);
    mul_r = real(mul);

    angle = atan(mul_i/mul_r);
    display(angle * 180/pi);
    if mul_r < 0 && mul_i >= 0
        angle = 3*pi/2 - angle;
    elseif mul_r < 0 && mul_i < 0
        angle = (3*pi / 2 - angle);
    elseif mul_r > 0
        angle = pi/2 - angle;
    elseif mul_r == 0 && mul_i > 0
        angle = pi/2;
    elseif mul_r == 0 && mul_i < 0
        angle = -pi/2;
    end

    powerMult = +1;

    if angle < 0
        powerMult = -1;
    end
end

