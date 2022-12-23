function [] = aufgabe3G(b)
    rotator = b.motorB;
    rotator.power = -10;
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
    
    tachos_rad = double(tachos) * pi / 180;
    
    rotator.power = 10;
    rotator.start();
    rotator.waitFor();
    
    polarplot(tachos_rad, values);
    
    max_value = max(values);
    max_value_pos = find(values==max_value);
    max_value_deg = -1 * tachos(max_value_pos);
    
    display([max_value, max_value_deg]);
    
    turn(b, -1, max_value_deg);
    
    testrun;
end