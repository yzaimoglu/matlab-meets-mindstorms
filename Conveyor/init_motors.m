function [conveyor, bgMotor, ryMotor] = init_motors(b)
    conveyor = b.motorA;
    bgMotor = b.motorB;
    ryMotor = b.motorD;
    
    conveyor.power = 20;
    conveyor.speedRegulation = 'On';
    
    bgMotor.power = 75;
    bgMotor.speedRegulation = 'Off';
    bgMotor.brakeMode = 'Brake';
    bgMotor.limitValue = 75;
    
    ryMotor.power = 75;
    ryMotor.speedRegulation = 'Off';
    ryMotor.brakeMode = 'Brake';
    ryMotor.limitValue = 75;
    
end

