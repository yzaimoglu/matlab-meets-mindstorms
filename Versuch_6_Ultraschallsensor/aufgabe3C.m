function [] = aufgabe3C(b)
    b.motorA.power = -20;
    b.motorD.power = -20;
    b.motorA.speedRegulation = 'Off';
    b.motorA.brakeMode = 'Brake';
    b.motorD.brakeMode = 'Brake';
    
    b.motorA.syncedStart(b.motorD, 'turnRatio', 0);
    
    distance = 500;
    
    while distance > 40
        distance = b.sensor4.value;
    end
    
    b.motorA.syncedStop();
end

