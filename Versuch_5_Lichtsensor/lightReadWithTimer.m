%% Lichtsensor-Versuch - Sensor timergesteuert auslesen
function lightReadWithTimer(brickObj, numberOfSeconds)

% ... Initialisierung der Vektoren, Starten der Stoppuhr hierher kopieren ...
myUserData.brick = brickObj;
myUserData.values = [];
myUserData.times = [];
myUserData.iteration = 0;
myUserData.previousTime = 0;

% Timer-Objekt anlegen und starten
ourTimer = timer;

set(ourTimer, 'ExecutionMode', 'fixedSpacing');
set(ourTimer, 'Period', 0.05);
set(ourTimer, 'TimerFcn', @readLightTimerFcn);
set(ourTimer, 'UserData', myUserData);

start(ourTimer);

pause(numberOfSeconds);

stop(ourTimer);

% Daten aus Timer-Objekt auslesen.
userData = get(ourTimer, 'UserData');

% Plotten der Ergebnisse hierher kopieren
plot(userData.times*6, userData.values);
xlabel('Zeit in Sekunden');
ylabel('Licht in %');
title(strcat('Lichtsensor für:',' ' ,num2str(userData.iteration), ' Werte'));
yline(mean(userData.values));

delete(ourTimer);
%--------------------------------------------------------------------------
end
%%
function readLightTimerFcn (timerObj, event)

% UserData aus Timer-Objekt holen
userData = get(timerObj, 'UserData');

% Zeit und Sensorwert in Datenstruktur speichern:
% Schleifeninhalt der while-Schleife aus lightReadWithLoop hierher kopieren
userData.iteration = userData.iteration + 1;
timeStart = tic;
value = userData.brick.sensor1.value;
userData.values = [userData.values, value];
timeStop = toc(timeStart);

userData.previousTime = userData.previousTime + timeStop;
userData.times = [userData.times, userData.previousTime];

% Daten zurueck in Timer-Objekt sichern
set(timerObj, 'UserData', userData);
%--------------------------------------------------------------------------
end
