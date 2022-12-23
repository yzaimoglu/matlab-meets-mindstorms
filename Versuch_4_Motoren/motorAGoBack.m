function [] = motorAGoBack(brick, powerMult)
       brick.motorA.power = powerMult * -1 * 20;
       brick.motorA.start();
       brick.motorA.waitFor();
end

