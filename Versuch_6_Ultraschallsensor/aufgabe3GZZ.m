function [] = aufgabe3GZ(b)
    rotator = b.motorB;
    rotator.power = -4;
    rotator.speedRegulation = 'On';
    rotator.limitValue = 365;
    
    values = [];
    tachos = [];
    
    rotator.resetTachoCount();
    rotator.start();
    
    while rotator.isRunning == 1
        value = b.sensor4.value;
        tacho = rotator.tachoCount;
        values = [values, value];
        tachos = [tachos, tacho];
    end
    
    display(values);
    
    tachos_rad = double(tachos) * pi / 180;
    
    rotator.power = 10;
    rotator.start();
    rotator.waitFor();
    polarplot(tachos_rad, values);
    
    %diffValues = diff(values);
    diffValues = values;
    
    display(diffValues);
    
    openings = [];
    openingTachos = cell(1,1);
    closings = [];
    open = 0;
    for i = 1:length(diffValues)
        if diffValues(i) >= 80 && ~open
            open = 1;
            openings = [openings, i];
        elseif diffValues(i) <= 70 && open
            open = 0;
            closings = [closings, i];
        end
    end
    
    display(openings);
    display(closings);
    
    if openings(1) == 1
        testrun;
        return
    else
        if length(openings) == 0
            display('Keine Öffnung gefunden');
            return
        end

        if length(openings) ~= length(closings)
            display('Der Sensor hat nicht alle Anfänge und Enden erkannt. Versuche es erneut.');    
            return
        end

        if closings(1) < openings(1)
            new_openings = [];
            new_openings(openings(1:end-1));
            new_closings = [];
            new_closings(closings(2:end));
            new_closings(end+1) = closings(1);
            new_openings(end+1) = openings(end);

            openings = new_openings;
            closings = new_closings;
        end

        for i = 1:length(openings)
            newTachos = tachos(openings(i):closings(i));
            openingTachos{1,i} = newTachos;
        end

        tachoToBeUsed = 1;

        display(openings);
        display(closings);
        display(tachos);
        display(openingTachos);

        if length(openingTachos) >= 2
            for i = 1:length(openingTachos)
                if i == length(openingTachos)
                   if length(openingTachos{1,length(openingTachos)}) >= length(openingTachos{1,i-1})
                        tachoToBeUsed = length(openingTachos);
                    else
                        tachoToBeUsed = i;
                    end 
                else
                    if length(openingTachos{i+1}) >= length(openingTachos{i})
                        tachoToBeUsed = i+1;
                    else
                        tachoToBeUsed = i;
                    end
                end
            end
        end

        degree = -1 * openingTachos{1,tachoToBeUsed}(1);

        turn(b, -1, degree);

        testrun;
    end
    
   
end