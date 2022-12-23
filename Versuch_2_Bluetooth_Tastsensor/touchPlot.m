function touchPlot(nominalval_vector,actualval_vector,switchstate_vector)
% Ausgabe der Ergebnisse von der GUI "touchGUI"
% Eingabewerte:
%   nominalval_vector: speichert die Sinuswelle
%   actualval_vector: speichert alle vorherigen Y-Werte (der letzte Eintrag
%   ist die letzte Y-Position)
%   switchstate_vector: speichert die Schalterzustaende des NXT Tastsensors


%% Variablen
x_values = 1:length(nominalval_vector);  % Vektor der x-Werte

%% Bearbeitung des Codes ab hier:

f = figure(1);

b = plot(x_values, actualval_vector, x_values, nominalval_vector);

hold all

t = title('Soll- und Istwert'); % 15pt
t.FontSize = 15;

x_label = xlabel('X-Werte'); % 12pt
y_label = ylabel('Y-Werte'); % 12pt

x_label.FontSize = 12;
y_label.FontSize = 12;

screensize = get(0, 'ScreenSize');

screensize_h = screensize(4);
screensize_w = screensize(3);
                                                                                                                                                                                                                                                                                                                                                                                          
inner_left = screensize_w/4;

center_y = screensize_h / 2;
center_x = screensize_w / 2;

f.Position = [inner_left, 200, center_x, center_y];
ylim([-1.5, 1.5]);

l = legend('Ist-Wert', 'Soll-Wert');
l.Location = 'southeast';

grid ON

f_two = figure(2);

plot(x_values, switchstate_vector);
title('Schalterstatus');
ylim([-0.5, 1.5]);

num_on = nnz(switchstate_vector==1);
%num_off = size(switchstate_vector) - num_on;

text(1,-0.5, ['True State Count: ', num2str(num_on)], 'verticalAlignment', 'bottom');

end