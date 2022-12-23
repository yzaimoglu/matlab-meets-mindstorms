function [b] = connect()
    b = EV3();
    b.connect('usb', 'beep', 'on');
end