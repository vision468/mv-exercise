clear all;
close all;
clc;

c = -20:100;
fr = zeros(1, length(c));

for i = 1:length(c)
    f = (c(i) * (9/5)) + 32;
    fr(i) = f;
end
disp(fr);
