function [values] = soundsensor()

% Initialisierung Brick und Sensor
b = EV3();
b.connect('usb', 'beep', 'on');

values = [];

b.sensor1.mode = DeviceMode.NXTSound.DB;

% For Schleife zum Zählen von 1-1000 und Ausführen der value Methode 1000x
for i = 1:1000
    values(i) = b.sensor1.value; 
end

% Schließen der Verbindung zum Brick
b.disconnect();

end