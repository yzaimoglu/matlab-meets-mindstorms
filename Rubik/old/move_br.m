%% Move the cube on the back to the right
function [cube] = move_br(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 1(123) - 4(369)  
    cube{1}(1) = original_cube{4}(3);
    cube{1}(2) = original_cube{4}(6);
    cube{1}(3) = original_cube{4}(9);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 4(369) - 5(789)
    cube{4}(3) = original_cube{5}(7);
    cube{4}(6) = original_cube{5}(8);
    cube{4}(9) = original_cube{5}(9); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 5(789) - 2(147)
    cube{5}(7) = original_cube{2}(1);
    cube{5}(8) = original_cube{2}(4);
    cube{5}(9) = original_cube{2}(7);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 2(147) - 1(123)
    cube{2}(1) = original_cube{1}(1);
    cube{2}(4) = original_cube{1}(2);
    cube{2}(7) = original_cube{1}(3);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

