C = -20:1:100; 
F = (9/5) * C + 32;

figure; 
plot(C, F, 'b-', 'LineWidth', 2); 
xlabel('Temperature (Celsius)'); 
ylabel('Temperature (Fahrenheit)'); 
title('Celsius to Fahrenheit Conversion'); 
grid on; 
