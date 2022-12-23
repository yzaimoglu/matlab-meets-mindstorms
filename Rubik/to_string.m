function [string] = to_string(cube)
  up = cube{1};
  left = cube{2};
  front = cube{3};
  right = cube{4};
  down = cube{5};
  back = cube{6};

  string = [up, left, front, right, down, back];
end
