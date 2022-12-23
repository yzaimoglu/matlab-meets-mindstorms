function [parsed_move] = move_parser_backwards(move)
    switch move
        case 'x33'
            parsed_move = {'F'};
        case 'x31'
            parsed_move = {'F'''};
        case 'x32'
            parsed_move = {'F2'};
        case 'x11'
            parsed_move = {'B'};
        case 'x13'
            parsed_move = {'B'''};
        case 'x12'
            parsed_move = {'B2'};
        case 'z31'
            parsed_move = {'D'};
        case 'z33'
            parsed_move = {'D'''};
        case 'z32'
            parsed_move = {'D2'};
        case 'y11'
            parsed_move = {'L'};
        case 'y13'
            parsed_move = {'L'''};
        case 'y12'
            parsed_move = {'L2'};
        case 'z13'
            parsed_move = {'U'};
        case 'z11'
            parsed_move = {'U'''};
        case 'z12'
            parsed_move = {'U2'};
        case 'y33'
            parsed_move = {'R'};
        case 'y31'
            parsed_move = {'R'''};
        case 'y32'
            parsed_move = {'R2'};
    end
end

