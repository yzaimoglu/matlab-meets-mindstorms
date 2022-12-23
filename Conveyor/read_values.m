function [values] = read_values(distanceSensor)
    value = distanceSensor.value;
    values = [values, value];
end

