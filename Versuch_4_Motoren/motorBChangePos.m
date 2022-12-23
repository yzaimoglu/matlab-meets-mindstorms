function [] = motorBChangePos(brick, powerMult, angle)
        brick.motorB.power = powerMult * -1 * 80;
        brick.motorB.brakeMode = 'Brake';
        brick.motorB.limitValue = 44.5 * (abs(angle) * 180/pi);
        brick.motorB.start();
        brick.motorB.waitFor();
end

