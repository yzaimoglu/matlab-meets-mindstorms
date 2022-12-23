function [] = motorBGoBack(brick, powerMult)
    brick.motorB.power = powerMult * 80;
    brick.motorB.start();
    brick.motorB.waitFor();
end

