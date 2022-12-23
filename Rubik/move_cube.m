function [cube] = move_cube(cube, move)
    cube = rubrot(cube, move_parser(move));
end

