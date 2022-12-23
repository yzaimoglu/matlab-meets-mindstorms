function [brick] = ultrasoundConnectEV3(connectionType, distanceType)

brick = EV3();

switch connectionType
    case 'usb'
        brick.connect('usb', 'beep', 'on');
    case 'bt'
        brick.connect('bt', 'serPort', '/dev/rfcomm0');
end

switch distanceType
    case 'cm'
        brick.sensor4.mode = DeviceMode.UltraSonic.DistCM;
    case 'inch'
        brick.sensor4.mode = DeviceMode.UltraSonic.DistIN;
end

end

