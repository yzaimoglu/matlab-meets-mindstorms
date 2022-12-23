function [] = aufgabe3F(b)
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
    
    tachos_rad = tachos * pi / 180;
    
    rotator.power = 10;
    rotator.start();
    rotator.waitFor();
    
    polar(tachos_rad, values);
end

