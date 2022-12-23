function [cube] = init_cube()
    cube = cell(1,6);
    for i = 1:length(cube)
        cube{i} = zeros(1,9);
    end
end
