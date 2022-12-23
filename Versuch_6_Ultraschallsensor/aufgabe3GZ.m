function [] = aufgabe3GZ(b)
    rotator = b.motorB;
    rotator.power = -4;
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
    
    diffValues = diff(values);
    
    display(diffValues);
    
    positionStart = -1;
    positionEnd = -1;
    for i = 1:length(diffValues)
        if diffValues(i) > 105
            positionStart = i;
        elseif diffValues(i) < -90
            positionEnd = i;
        end
    end
    
    display(positionStart);
    display(positionEnd);
    
    newTachos = tachos(positionStart+1:positionEnd+1);
    display(newTachos);
    degree = -1 * median(newTachos);
    display(degree);
    
    turn(b, -1, degree);
    
    testrun;
end