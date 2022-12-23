function [matrix] = to_matrix(cube_cell)
    matrix = zeros(3,3,6);
    matrix_array = [1,4,7,2,5,8,3,6,9];
    
    for i = 1:length(cube_cell)
        for j = 1:length(cube_cell{i})
            pos = matrix_array(j) + 9 * (i-1);
            matrix(pos) = cube_cell{i}(j);
        end
    end
end

