function colors = get_valid_colors(cube)
    colors = zeros(3,3,6);
    colors((5-1)*9+1:(5-1)*9+9) = cube((6-1)*9+1:(6-1)*9+9); % Yellow
    colors((1-1)*9+1:(1-1)*9+9) = cube((5-1)*9+1:(5-1)*9+9); % White
    colors((4-1)*9+1:(4-1)*9+9) = cube((4-1)*9+1:(4-1)*9+9); % Green
    colors((6-1)*9+1:(6-1)*9+9) = cube((3-1)*9+1:(3-1)*9+9); % Orange
    colors((2-1)*9+1:(2-1)*9+9) = cube((2-1)*9+1:(2-1)*9+9); % Blue
    colors((3-1)*9+1:(3-1)*9+9) = cube((1-1)*9+1:(1-1)*9+9); % Red
%             colors = cube;
end