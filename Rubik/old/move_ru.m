%% Move the cube on the right upwards
function [cube] = move_ru(cube)
    %% Save positions of the original cube
    original_cube = cube;
    display('Before');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 3(369) - 1(369)  
    cube{3}(3) = original_cube{1}(3);
    cube{3}(6) = original_cube{1}(6);
    cube{3}(9) = original_cube{1}(9);
    
    display('First');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 1(369) - 6(147)
    cube{1}(3) = original_cube{6}(1);
    cube{1}(6) = original_cube{6}(4);
    cube{1}(9) = original_cube{6}(7); 
    
    display('Second');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 6(147) - 5(369)
    cube{6}(1) = original_cube{5}(3);
    cube{6}(4) = original_cube{5}(6);
    cube{6}(7) = original_cube{5}(9);
    
    display('Third');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% 5(369) - 3(369)
    cube{5}(3) = original_cube{3}(3);
    cube{5}(6) = original_cube{3}(6);
    cube{5}(9) = original_cube{3}(9);
    
    display('Fourth');
    for i = 1:length(cube)
        display(cube{i});
    end
    
    %% DONE.
end

