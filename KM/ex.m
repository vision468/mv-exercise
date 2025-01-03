clear all;
close all;
clc;

randomNumbers = randi([0, 100], 1, 50);

for i = 1:length(randomNumbers)
    if randomNumbers(i) > 50
        text(i, randomNumbers(i), num2str(randomNumbers(i)), 'Color', 'red');
    else
        text(i, randomNumbers(i), num2str(randomNumbers(i)), 'Color', 'blue');
    end
end

xlim([0, 51]);
ylim([0, 101]);
xlabel('Index');
ylabel('Value');
title('Random Numbers with Color Indication');
grid on;
hold off;
