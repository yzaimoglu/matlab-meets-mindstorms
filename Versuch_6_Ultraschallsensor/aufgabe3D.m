function [] = aufgabe3D(b, aufgabenteil, power)
    if aufgabenteil == 1
        b.motorA.power = -1 * power;
        b.motorD.power = -1 * power;
        b.motorA.speedRegulation = 'Off';
        b.motorA.brakeMode = 'Brake';
        b.motorD.brakeMode = 'Brake';

        b.motorA.syncedStart(b.motorD, 'turnRatio', 0);

        distance = 500;

        while distance > 40
            distance = b.sensor4.value;
        end

        b.motorA.syncedStop();
    else
        values_20 = [39.8, 39.8, 39.8];
        values_30 = [39.0, 40.0, 39.0];
        values_40 = [37.3, 38.8, 37.9];
        values_50 = [37.5, 38.0, 37.8];
        values_60 = [36.9, 36.5, 36.5];
        values_70 = [36.3, 35.9, 36.2];
        values_80 = [35.5, 35.0, 34.2];
        
        values_power = [20,30,40,50,60,70,80];
        
        mean_20 = mean(values_20);
        mean_30 = mean(values_30);
        mean_40 = mean(values_40);
        mean_50 = mean(values_50);
        mean_60 = mean(values_60);
        mean_70 = mean(values_70);
        mean_80 = mean(values_80);
        
        means = [mean_20, mean_30, mean_40, mean_50, mean_60, mean_70, mean_80];
        display(means);
        
        %plot(values_power, means);
        p = polyfit(values_power, means, 2);
        display(p);
        plot(values_power, means);
    end
end

