function cube = move_cube(cube, move)
    tempCube = cube;
    faces.up = 5;
    faces.right = 2;
    faces.front = 1;
    faces.left = 4;
    faces.down = 6;
    faces.back = 3;
    function position = getPos(face, num)
        position = (face-1) * 9 + num;
    end
    print_cube(tempCube);
    switch move
        case 'F'
            % R123 - U369
            tempCube(getPos(faces.right, 1)) = cube(getPos(faces.up, 3));
            tempCube(getPos(faces.right, 2)) = cube(getPos(faces.up, 6));
            tempCube(getPos(faces.right, 3)) = cube(getPos(faces.up, 9));
            % U369 - L987
            tempCube(getPos(faces.up, 3)) = cube(getPos(faces.left, 9));
            tempCube(getPos(faces.up, 6)) = cube(getPos(faces.left, 8));
            tempCube(getPos(faces.up, 9)) = cube(getPos(faces.left, 7));
            % L789 - D147
            tempCube(getPos(faces.left, 7)) = cube(getPos(faces.down, 1));
            tempCube(getPos(faces.left, 8)) = cube(getPos(faces.down, 4));
            tempCube(getPos(faces.left, 9)) = cube(getPos(faces.down, 7));
            % D147 - R321
            tempCube(getPos(faces.down, 1)) = cube(getPos(faces.right, 3));
            tempCube(getPos(faces.down, 4)) = cube(getPos(faces.right, 2));
            tempCube(getPos(faces.down, 7)) = cube(getPos(faces.right, 1));
        case 'F'''
            % R123 - D741
            tempCube(getPos(faces.right, 1)) = cube(getPos(faces.down, 7));
            tempCube(getPos(faces.right, 2)) = cube(getPos(faces.down, 4));
            tempCube(getPos(faces.right, 3)) = cube(getPos(faces.down, 1));
            % D147 - L789
            tempCube(getPos(faces.down, 1)) = cube(getPos(faces.left, 7));
            tempCube(getPos(faces.down, 4)) = cube(getPos(faces.left, 8));
            tempCube(getPos(faces.down, 7)) = cube(getPos(faces.left, 9));
            % L789 - U963
            tempCube(getPos(faces.left, 7)) = cube(getPos(faces.up, 9));
            tempCube(getPos(faces.left, 8)) = cube(getPos(faces.up, 6));
            tempCube(getPos(faces.left, 9)) = cube(getPos(faces.up, 3));
            % U369 - R123
            tempCube(getPos(faces.up, 3)) = cube(getPos(faces.right, 1));
            tempCube(getPos(faces.up, 6)) = cube(getPos(faces.right, 2));
            tempCube(getPos(faces.up, 9)) = cube(getPos(faces.right, 3));
        case 'U'
            % F147 - R147
            tempCube(getPos(faces.front, 1)) = cube(getPos(faces.right, 1));
            tempCube(getPos(faces.front, 4)) = cube(getPos(faces.right, 4));
            tempCube(getPos(faces.front, 7)) = cube(getPos(faces.right, 7));
            % R147 - B147
            tempCube(getPos(faces.right, 1)) = cube(getPos(faces.back, 1));
            tempCube(getPos(faces.right, 4)) = cube(getPos(faces.back, 4));
            tempCube(getPos(faces.right, 7)) = cube(getPos(faces.back, 7));
            % B147 - L147
            tempCube(getPos(faces.back, 1)) = cube(getPos(faces.left, 1));
            tempCube(getPos(faces.back, 4)) = cube(getPos(faces.left, 4));
            tempCube(getPos(faces.back, 7)) = cube(getPos(faces.left, 7));
            % L147 - F147
            tempCube(getPos(faces.left, 1)) = cube(getPos(faces.front, 1));
            tempCube(getPos(faces.left, 4)) = cube(getPos(faces.front, 4));
            tempCube(getPos(faces.left, 7)) = cube(getPos(faces.front, 7));
        case 'U'''
            % F147 - L147
            tempCube(getPos(faces.front, 1)) = cube(getPos(faces.left, 1));
            tempCube(getPos(faces.front, 4)) = cube(getPos(faces.left, 4));
            tempCube(getPos(faces.front, 7)) = cube(getPos(faces.left, 7));
            % L147 - B147
            tempCube(getPos(faces.left, 1)) = cube(getPos(faces.back, 1));
            tempCube(getPos(faces.left, 4)) = cube(getPos(faces.back, 4));
            tempCube(getPos(faces.left, 7)) = cube(getPos(faces.back, 7));
            % B147 - R147
            tempCube(getPos(faces.back, 1)) = cube(getPos(faces.right, 1));
            tempCube(getPos(faces.back, 4)) = cube(getPos(faces.right, 4));
            tempCube(getPos(faces.back, 7)) = cube(getPos(faces.right, 7));
            % R147 - F147
            tempCube(getPos(faces.right, 1)) = cube(getPos(faces.front, 1));
            tempCube(getPos(faces.right, 4)) = cube(getPos(faces.front, 4));
            tempCube(getPos(faces.right, 7)) = cube(getPos(faces.front, 7));
        case 'L'
            % F123 - D123
            tempCube(getPos(faces.front, 1)) = cube(getPos(faces.down, 1));
            tempCube(getPos(faces.front, 2)) = cube(getPos(faces.down, 2));
            tempCube(getPos(faces.front, 3)) = cube(getPos(faces.down, 3));
            % D123 - B987
            tempCube(getPos(faces.down, 1)) = cube(getPos(faces.back, 9));
            tempCube(getPos(faces.down, 2)) = cube(getPos(faces.back, 8));
            tempCube(getPos(faces.down, 3)) = cube(getPos(faces.back, 7));
            % B789 - U321
            tempCube(getPos(faces.back, 7)) = cube(getPos(faces.up, 3));
            tempCube(getPos(faces.back, 8)) = cube(getPos(faces.up, 2));
            tempCube(getPos(faces.back, 9)) = cube(getPos(faces.up, 1));
            % U123 - F123
            tempCube(getPos(faces.up, 1)) = cube(getPos(faces.front, 1));
            tempCube(getPos(faces.up, 2)) = cube(getPos(faces.front, 2));
            tempCube(getPos(faces.up, 3)) = cube(getPos(faces.front, 3));
        case 'L'''
            % F123 - U123
            tempCube(getPos(faces.front, 1)) = cube(getPos(faces.up, 1));
            tempCube(getPos(faces.front, 2)) = cube(getPos(faces.up, 2));
            tempCube(getPos(faces.front, 3)) = cube(getPos(faces.up, 3));
            % U123 - B987
            tempCube(getPos(faces.up, 1)) = cube(getPos(faces.back, 9));
            tempCube(getPos(faces.up, 2)) = cube(getPos(faces.back, 8));
            tempCube(getPos(faces.up, 3)) = cube(getPos(faces.back, 7));
            % B789 - D321
            tempCube(getPos(faces.back, 7)) = cube(getPos(faces.down, 3));
            tempCube(getPos(faces.back, 8)) = cube(getPos(faces.down, 2));
            tempCube(getPos(faces.back, 9)) = cube(getPos(faces.down, 1));
            % D123 - F123
            tempCube(getPos(faces.down, 1)) = cube(getPos(faces.front, 1));
            tempCube(getPos(faces.down, 2)) = cube(getPos(faces.front, 2));
            tempCube(getPos(faces.down, 3)) = cube(getPos(faces.front, 3));
        case 'R'
            % F789 - D789
            tempCube(getPos(faces.front, 7)) = cube(getPos(faces.down, 7));
            tempCube(getPos(faces.front, 8)) = cube(getPos(faces.down, 8));
            tempCube(getPos(faces.front, 9)) = cube(getPos(faces.down, 9));
            % D789 - B321
            tempCube(getPos(faces.down, 7)) = cube(getPos(faces.back, 3));
            tempCube(getPos(faces.down, 8)) = cube(getPos(faces.back, 2));
            tempCube(getPos(faces.down, 9)) = cube(getPos(faces.back, 1));
            % B123 - U987
            tempCube(getPos(faces.back, 1)) = cube(getPos(faces.up, 9));
            tempCube(getPos(faces.back, 2)) = cube(getPos(faces.up, 8));
            tempCube(getPos(faces.back, 3)) = cube(getPos(faces.up, 7));
            % U789 - F789
            tempCube(getPos(faces.up, 7)) = cube(getPos(faces.front, 7));
            tempCube(getPos(faces.up, 8)) = cube(getPos(faces.front, 8));
            tempCube(getPos(faces.up, 9)) = cube(getPos(faces.front, 9));
        case 'R'''
            % F789 - U789
            tempCube(getPos(faces.front, 7)) = cube(getPos(faces.up, 7));
            tempCube(getPos(faces.front, 8)) = cube(getPos(faces.up, 8));
            tempCube(getPos(faces.front, 9)) = cube(getPos(faces.up, 9));
            % U789 - B321
            tempCube(getPos(faces.up, 7)) = cube(getPos(faces.back, 3));
            tempCube(getPos(faces.up, 8)) = cube(getPos(faces.back, 2));
            tempCube(getPos(faces.up, 9)) = cube(getPos(faces.back, 1));
            % B123 - D987
            tempCube(getPos(faces.back, 1)) = cube(getPos(faces.down, 9));
            tempCube(getPos(faces.back, 2)) = cube(getPos(faces.down, 8));
            tempCube(getPos(faces.back, 3)) = cube(getPos(faces.down, 7));
            % D789 - F789
            tempCube(getPos(faces.down, 7)) = cube(getPos(faces.front, 7));
            tempCube(getPos(faces.down, 8)) = cube(getPos(faces.front, 8));
            tempCube(getPos(faces.down, 9)) = cube(getPos(faces.front, 9));
        case 'D'
            % F369 - L369
            tempCube(getPos(faces.front, 3)) = cube(getPos(faces.left, 3));
            tempCube(getPos(faces.front, 6)) = cube(getPos(faces.left, 6));
            tempCube(getPos(faces.front, 9)) = cube(getPos(faces.left, 9));
            % L369 - B369
            tempCube(getPos(faces.left, 3)) = cube(getPos(faces.back, 3));
            tempCube(getPos(faces.left, 6)) = cube(getPos(faces.back, 6));
            tempCube(getPos(faces.left, 9)) = cube(getPos(faces.back, 9));
            % B369 - R369
            tempCube(getPos(faces.back, 3)) = cube(getPos(faces.right, 3));
            tempCube(getPos(faces.back, 6)) = cube(getPos(faces.right, 6));
            tempCube(getPos(faces.back, 9)) = cube(getPos(faces.right, 9));
            % R369 - F369
            tempCube(getPos(faces.right, 3)) = cube(getPos(faces.front, 3));
            tempCube(getPos(faces.right, 6)) = cube(getPos(faces.front, 6));
            tempCube(getPos(faces.right, 9)) = cube(getPos(faces.front, 9));
        case 'D'''
            % F369 - R369
            tempCube(getPos(faces.front, 3)) = cube(getPos(faces.right, 3));
            tempCube(getPos(faces.front, 6)) = cube(getPos(faces.right, 6));
            tempCube(getPos(faces.front, 9)) = cube(getPos(faces.right, 9));
            % R369 - B369
            tempCube(getPos(faces.right, 3)) = cube(getPos(faces.back, 3));
            tempCube(getPos(faces.right, 6)) = cube(getPos(faces.back, 6));
            tempCube(getPos(faces.right, 9)) = cube(getPos(faces.back, 9));
            % B369 - L369
            tempCube(getPos(faces.back, 3)) = cube(getPos(faces.left, 3));
            tempCube(getPos(faces.back, 6)) = cube(getPos(faces.left, 6));
            tempCube(getPos(faces.back, 9)) = cube(getPos(faces.left, 9));
            % L369 - F369
            tempCube(getPos(faces.left, 3)) = cube(getPos(faces.front, 3));
            tempCube(getPos(faces.left, 6)) = cube(getPos(faces.front, 6));
            tempCube(getPos(faces.left, 9)) = cube(getPos(faces.front, 9));
        case 'B'
            % U147 - R789
            tempCube(getPos(faces.up, 1)) = cube(getPos(faces.right, 7));
            tempCube(getPos(faces.up, 4)) = cube(getPos(faces.right, 8));
            tempCube(getPos(faces.up, 7)) = cube(getPos(faces.right, 9));
            % R789 - D963
            tempCube(getPos(faces.right, 7)) = cube(getPos(faces.down, 9));
            tempCube(getPos(faces.right, 8)) = cube(getPos(faces.down, 6));
            tempCube(getPos(faces.right, 9)) = cube(getPos(faces.down, 3));
            % D369 - L123
            tempCube(getPos(faces.down, 3)) = cube(getPos(faces.left, 1));
            tempCube(getPos(faces.down, 6)) = cube(getPos(faces.left, 2));
            tempCube(getPos(faces.down, 9)) = cube(getPos(faces.left, 3));
            % L123 - U741
            tempCube(getPos(faces.left, 1)) = cube(getPos(faces.up, 7));
            tempCube(getPos(faces.left, 2)) = cube(getPos(faces.up, 4));
            tempCube(getPos(faces.left, 3)) = cube(getPos(faces.up, 1));
        case 'B'''
            % U147 - L321
            tempCube(getPos(faces.up, 1)) = cube(getPos(faces.left, 3));
            tempCube(getPos(faces.up, 4)) = cube(getPos(faces.left, 2));
            tempCube(getPos(faces.up, 7)) = cube(getPos(faces.left, 1));
            % L123 - D963
            tempCube(getPos(faces.left, 1)) = cube(getPos(faces.down, 9));
            tempCube(getPos(faces.left, 2)) = cube(getPos(faces.down, 6));
            tempCube(getPos(faces.left, 3)) = cube(getPos(faces.down, 3));
            % D369 - R987
            tempCube(getPos(faces.down, 3)) = cube(getPos(faces.right, 9));
            tempCube(getPos(faces.down, 6)) = cube(getPos(faces.right, 8));
            tempCube(getPos(faces.down, 9)) = cube(getPos(faces.right, 7));
            % R789 - U147
            tempCube(getPos(faces.right, 9)) = cube(getPos(faces.up, 1));
            tempCube(getPos(faces.right, 8)) = cube(getPos(faces.up, 4));
            tempCube(getPos(faces.right, 7)) = cube(getPos(faces.up, 7));
    end
    disp(' ');
    print_cube(tempCube);
    cube = tempCube;
end