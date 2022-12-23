function [grabber, rotator, sensorMotor] = init_motors(b)
    grabber = b.motorB;
    grabber.power = 40;
    rotator = b.motorA;
    rotator.power = 30;
    sensorMotor = b.motorC;
end

