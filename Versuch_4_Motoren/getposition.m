function [positionX, positionY] = getposition(num)
    two_pi = 2*pi;
    next = two_pi / 10;
    
    positionX = cos(next*num-pi/2);
    positionY = -sin(next*num-pi/2);
    
%     switch num
%         case 0
%             positionX = 0;
%             positionY = 1;
%         case 1
%             positionX = 0.587785;
%             positionY = 0.809017;
%         case 2
%             positionX = 0.951057;
%             positionY = 0.309017;
%         case 3
%             positionX = 0.951057;
%             positionY = -0.309017;
%         case 4
%             positionX = 0.587785;
%             positionY = -0.809017;
%         case 5
%             positionX = 0;
%             positionY = -1;
%         case 6
%             positionX = -0.587785;
%             positionY = -0.809017;
%         case 7
%             positionX = -0.951057;
%             positionY = -0.309017;
%         case 8
%             positionX = -0.951057;
%             positionY = 0.309017;
%         case 9
%             positionX = -0.587785;
%             positionY = 0.809017;
%     end
end

