function [] = aufgabe3E(b, aufgabenteil, power)
    if aufgabenteil == 1
        b.motorA.power = -1 * power;
        b.motorD.power = -1 * power;
        b.motorA.speedRegulation = 'Off';
        b.motorA.brakeMode = 'Brake';
        b.motorD.brakeMode = 'Brake';

        b.motorA.syncedStart(b.motorD, 'turnRatio', 0);

        distance = 500;
        
        polyFunc = -0.0002 * power * power - 0.0628 * power + 41.15;

        distanceToTake = 40 - polyFunc;
        
        display(distanceToTake);
        
        while distance > (40+distanceToTake)
            distance = b.sensor4.value;
        end

        b.motorA.syncedStop();
    else
        values_power = [20,30,40,50,60,70,80];
        values_distance = [40, 40, 40.4, 40.4, 40.4, 40.3, 40.5];
        
        plot(values_power, values_distance);
    end
end

