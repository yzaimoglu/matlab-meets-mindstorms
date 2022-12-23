function [] = motorABGoBack(brick, powerMultA, powerMultB)
        motorBGoBack(brick, powerMultB);
        
        pause(2);
        
        motorAGoBack(brick, powerMultA);
end

