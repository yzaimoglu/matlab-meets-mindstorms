function [colorMatrix] = to_color_from_matrix(matrix)
    colorMatrix = [{'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'};
        {'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'};
        {'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'};
        {'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'};
        {'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'};
        {'w'};{'w'};{'w'};{'w'};{'w'};{'w'}; {'w'}; {'w'}; {'w'}];

    for i = 1:54
        colorMatrix{i} = encodeToColor(matrix(i));
        display(matrix(i));
        color = encodeToColor(matrix(i));
        display(color);
    end
end

function [color] = encodeToColor(colorCode)
  [y,o,g,b,r,w] = colorDefs();
  switch colorCode
    case 1
      color = r;
    case 2
      color = b;
    case 3
      color = o;
    case 4
      color = g;
    case 5
      color = w;
    case 6
      color = y;
  end
end