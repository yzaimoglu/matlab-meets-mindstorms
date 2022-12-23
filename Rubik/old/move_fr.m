%% Move the cube on the front to the right
function [cube] = move_fr(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 1(789) - 4(147)  
    cube{1}(7) = original_cube{4}(1);
    cube{1}(8) = original_cube{4}(4);
    cube{1}(9) = original_cube{4}(7);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 4(147) - 5(123)
    cube{4}(1) = original_cube{5}(1);
    cube{4}(4) = original_cube{5}(2);
    cube{4}(7) = original_cube{5}(3); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 5(123) - 2(369)
    cube{5}(1) = original_cube{2}(3);
    cube{5}(2) = original_cube{2}(6);
    cube{5}(3) = original_cube{2}(9);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 2(369) - 1(789)
    cube{2}(3) = original_cube{1}(7);
    cube{2}(6) = original_cube{1}(8);
    cube{2}(9) = original_cube{1}(9);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

