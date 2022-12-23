function [colorSensor] = init_sensor(b)
    colorSensor = b.sensor2;
    colorSensor.mode = DeviceMode.Color.Reflect;
end

