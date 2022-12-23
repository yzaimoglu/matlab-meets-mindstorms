function [colorSensor] = init_sensors(b)
    colorSensor = b.sensor1;
    %buttonSensor = b.sensor4;
    
    %distanceSensor.mode = DeviceMode.UltraSonic.DistCM;
    colorSensor.mode = DeviceMode.Color.Col;
end

