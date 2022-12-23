function [value, switchstate] = touchGetYPos(actualval_vector,cyclecount,brickObj)
% Berechnet den Wert des manuell veraenderlichen Signals fuer die GUI
% Beim Druecken des Tastsensors erhoeht sich der Wert
% und der Wert sinkt beim Loslassen des Tastsensors.
% Ausgabewerte:
%   value: neuer Y-Wert  neuerWert
%   switchstate: Tastsensor-Status
% Eingabewerte:
%   actualval_vector: speichert alle vorherigen Y-Werte (der letzte
%   Eintrag ist die letzte Y-Position)
%   cyclecount: Anzahl der bisherigen Funktionsaufrufe


% % Initialisieren der Bluetooth Verbindung
% brickObj = EV3();
% brickObj.connect('ioType','bt','serPort','/dev/rfcomm0');
% 
% 
% %COM_SetDefaultNXT(h);   gibt es keinen ersatzbefehl fuer?
% 
% % Initialisierung des Sensors und Aufruf der GUI
% 
% %OpenSwitch(SENSOR_1);
% brickObj.sensor1.mode = DeviceMode.Touch.Pushed;
% %
%% Bearbeitung des Codes ab hier:

% switchstate = brickObj.sensor1.value;
% 
% last_x_value = asin(actualval_vector[-1]);
% value = sin(last_x_value+)
% 
% cyclecount = cyclecount + 1;

switchstate = brickObj.sensor1.value;
factor = 1.70;

if switchstate == 1
    if actualval_vector(end) + factor * 0.1 >= 1.5
        value = 1.5;
    else
        value = actualval_vector(end) + factor * 0.1;
    end
else
    if actualval_vector(end) - factor * 0.1 <= -1.5
        value = -1.5;
    else
       value = actualval_vector(end) - factor * 0.1; 
    end
end

end
