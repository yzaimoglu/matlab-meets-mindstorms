function [cube, moves] = random_cube()
    moves = [{'U'}, {'U'''}, {'L'}, {'L'''}, {'R'}, {'R'''}, {'D'}, {'D'''}];
    cube = zeros(3,3,6);
    cube(:,:,1) = [(1*ones(1,3));(1*ones(1,3));(1*ones(1,3))];
    cube(:,:,2) = [(2*ones(1,3));(2*ones(1,3));(2*ones(1,3))];
    cube(:,:,3) = [(3*ones(1,3));(3*ones(1,3));(3*ones(1,3))];
    cube(:,:,4) = [(4*ones(1,3));(4*ones(1,3));(4*ones(1,3))];
    cube(:,:,5) = [(5*ones(1,3));(5*ones(1,3));(5*ones(1,3))];
    cube(:,:,6) = [(6*ones(1,3));(6*ones(1,3));(6*ones(1,3))];
    
    moves = shuffle_array(moves);
    
    for i = 1:length(moves)
        disp(moves{i});
        cube = move_cube(cube, moves{i});
    end
end


