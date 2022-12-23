function [b, grabber, rotator, sensorMotor, sensor] = connect()
    b = EV3();
    b.connect('usb');
    
    [grabber, rotator, sensorMotor] = init_motors(b);
    sensor = init_sensor(b);
end

