%% Move the cube on the bottom side to the right
function [cube] = move_dr(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 3(789) - 4(789)  
    cube{3}(7) = original_cube{4}(7);
    cube{3}(8) = original_cube{4}(8);
    cube{3}(9) = original_cube{4}(9);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 4(789) - 6(789)
    cube{4}(7) = original_cube{6}(7);
    cube{4}(8) = original_cube{6}(8);
    cube{4}(9) = original_cube{6}(9); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 6(789) - 2(789)
    cube{6}(7) = original_cube{2}(7);
    cube{6}(8) = original_cube{2}(8);
    cube{6}(9) = original_cube{2}(9);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 2(789) - 3(789)
    cube{2}(7) = original_cube{3}(7);
    cube{2}(8) = original_cube{3}(8);
    cube{2}(9) = original_cube{3}(9);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

