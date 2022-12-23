function [parsed_move] = move_parser(move)
    switch move
        case 'F'
            parsed_move = 'x33';
        case 'F'''
            parsed_move = 'x31';
        case 'F2'
            parsed_move = 'x32';
        case 'B'
            parsed_move = 'x11';
        case 'B'''
            parsed_move = 'x13';
        case 'B2'
            parsed_move = 'x12';
        case 'D'
            parsed_move = 'z31';
        case 'D'''
            parsed_move = 'z33';
        case 'D2'
            parsed_move = 'z32';
        case 'L'
            parsed_move = 'y11';
        case 'L'''
            parsed_move = 'y13';
        case 'L2'
            parsed_move = 'y12';
        case 'U'
            parsed_move = 'z13';
        case 'U'''
            parsed_move = 'z11';
        case 'U2'
            parsed_move = 'z12';
        case 'R'
            parsed_move = 'y33';
        case 'R'''
            parsed_move = 'y31';
        case 'R2'
            parsed_move = 'y32';
    end
end

