function [] = motorAChangePos(brick, powerMult, angle)
        brick.motorA.power = powerMult * 20;
        brick.motorA.brakeMode = 'Brake';
        brick.motorA.limitValue = abs(angle) * 180/pi;
        brick.motorA.start();
        brick.motorA.waitFor();
end

