function [cube] = move_cube_old(cube, move)
    switch move
        case 'F'
            cube = move_fr(cube);
        case 'F'''
            cube = move_fl(cube);
        case 'R'
            cube = move_ru(cube);
        case 'R'''
            cube = move_rd(cube);
        case 'U'
            cube = move_ul(cube);
        case 'U'''
            cube = move_ur(cube);
        case 'L'
            cube = move_ld(cube);
        case 'L'''
            cube = move_lu(cube);
        case 'B'
            cube = move_bl(cube);
        case 'B'''
            cube = move_br(cube);
        case 'D'
            cube = move_dr(cube);
        case 'D'''
            cube = move_dl(cube);
        case 'F2'
            cube = move_fr(cube);
            cube = move_fr(cube);
        case 'R2'
            cube = move_ru(cube);
            cube = move_ru(cube);
        case 'U2'
            cube = move_ul(cube);
            cube = move_ul(cube);
        case 'L2'
            cube = move_ld(cube);
            cube = move_ld(cube);
        case 'B2'
            cube = move_bl(cube);
            cube = move_bl(cube);
        case 'D2'
            cube = move_dr(cube);
            cube = move_dr(cube);
    end
end

