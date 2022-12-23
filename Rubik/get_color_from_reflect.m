function [color] = get_color_from_reflect(reflect)
    if reflect >= 95
        color = 5;
    elseif reflect < 95 && reflect >= 79
        color = 3;
    elseif reflect < 79 && reflect >= 73
        color = 6;
    elseif reflect < 73 && reflect >= 40
        color = 1;
    elseif reflect < 40 && reflect >= 19
        color = 4;
    elseif reflect < 19 && reflect >= 0
        color = 2;
    else
        color = 5;
    end
end

