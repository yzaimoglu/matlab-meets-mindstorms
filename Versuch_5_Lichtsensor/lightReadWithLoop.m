%% Lichtsensor-Versuch - Sensor in Schleife auslesen
function lightReadWithLoop(brickObj, numberOfSeconds)

% hier wird keine Initialisierung des Sensors benoetigt!

% Initialisierung der Vektoren, Start der Stoppuhr
previousTime = 0;
value = 0;
values = [];
times = [];
iteration = 0;

% In einer Schleife für die angegebene Anzahl an Sekunden messen
while previousTime <= numberOfSeconds
    iteration = iteration + 1;
    timeStart = tic;
    value = brickObj.sensor1.value;
    values = [values, value];
    times = [times, previousTime];
    timeStop = toc(timeStart);
    
    previousTime = previousTime + timeStop;
end


% Plotten der Ergebnisse
plot(times, values);
xlabel('Zeit in Sekunden');
ylabel('Licht in %');
title(strcat('Lichtsensor für:',' ' ,num2str(iteration), ' Werte'));
yline(mean(values));