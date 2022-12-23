%% Move the cube on the upper side to the right
function [cube] = move_ur(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 3(123) - 4(123)  
    cube{3}(1) = original_cube{4}(1);
    cube{3}(2) = original_cube{4}(2);
    cube{3}(3) = original_cube{4}(3);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 4(123) - 6(123)
    cube{4}(1) = original_cube{6}(1);
    cube{4}(2) = original_cube{6}(2);
    cube{4}(3) = original_cube{6}(3); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 6(123) - 2(123)
    cube{6}(1) = original_cube{2}(1);
    cube{6}(2) = original_cube{2}(2);
    cube{6}(3) = original_cube{2}(3);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 2(123) - 3(123)
    cube{2}(1) = original_cube{3}(1);
    cube{2}(2) = original_cube{3}(2);
    cube{2}(3) = original_cube{3}(3);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

