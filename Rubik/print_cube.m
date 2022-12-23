function [] = print_cube(cube)
    for i = 1:6
        display(cube(1+(i-1)*9:9+(i-1)*9))
    end
end

