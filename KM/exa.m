clear all;
close all;
clc;

randomNumbers = randi([0, 100], 1, 50);
x = 1:length(randomNumbers);
y = randomNumbers;

for i=1:50
    if y(i) > 50
        scatter(x(i), y(i), 'r', 'filled');
    else
        scatter(x(i), y(i), 'b', 'filled');
    end
    hold on;
    grid on;
end
