function [colorCube] = to_color_from_cell(cube)
  colorCube = cell(1,6);
  for i = 1:length(cube)
    for j = 1:length(cube{i})
      colorCube{i}(j) = encodeToColor(cube{i}(j));
    end
  end
end

function [color] = encodeToColor(colorCode)
  switch colorCode
    case 1
      color = 'G';
    case 2
      color = 'B';
    case 3
      color = 'Y';
    case 4
      color = 'O';
    case 5
      color = 'R';
    case 6
      color = 'W';
  end
end
