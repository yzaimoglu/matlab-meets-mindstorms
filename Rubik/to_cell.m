function [cube_cell] = to_cell(matrix)
    cube_cell = init_cube();
    matrix_array = [1,4,7,2,5,8,3,6,9];
    for i = 1:length(cube_cell)
        for j = 1:length(cube_cell{i})
            position = matrix_array(j) + 9 * (i-1);
            cube_cell{i}(j) = matrix(position);
        end
    end
end

