%% Move the cube on the left side upwards
function [cube] = move_lu(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 3(147) - 1(147)  
    cube{3}(1) = original_cube{1}(1);
    cube{3}(4) = original_cube{1}(4);
    cube{3}(7) = original_cube{1}(7);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 1(147) - 6(369)
    cube{1}(1) = original_cube{6}(3);
    cube{1}(4) = original_cube{6}(6);
    cube{1}(7) = original_cube{6}(9); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 6(369) - 5(147)
    cube{6}(3) = original_cube{5}(1);
    cube{6}(6) = original_cube{5}(4);
    cube{6}(9) = original_cube{5}(7);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 5(147) - 3(147)
    cube{5}(1) = original_cube{3}(1);
    cube{5}(4) = original_cube{3}(4);
    cube{5}(7) = original_cube{3}(7);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

