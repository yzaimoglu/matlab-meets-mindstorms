function [faces] = to_faces(cube)
    colorMatrix = to_color_from_matrix(cube);
    
    faces = cell(6, 1);
    for i = 1:length(faces)
        faces{i} = cell(3, 3);
    end
  
    pos = 0;
    for i = 1:length(faces)
        for j = 1:9
            pos = pos + 1;
            faces{i}{j} = colorMatrix{pos};
        end
    end

%     tempFaces = faces;
%     tempFaces{1} = faces{4};
%     tempFaces{2} = faces{5};
%     tempFaces{3} = faces{2};
%     tempFaces{4} = faces{6};
%     tempFaces{5} = faces{1};
%     tempFaces{6} = faces{3};
% 
%     faces = tempFaces;
end

