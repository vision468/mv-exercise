lower_limit = 0; 
upper_limit = 10; 

points = lower_limit + (upper_limit - lower_limit) * rand(3, 2); 

x1 = points(1, 1); y1 = points(1, 2);
x2 = points(2, 1); y2 = points(2, 2);
x3 = points(3, 1); y3 = points(3, 2);

figure;
fill([x1 x2 x3], [y1 y2 y3], 'g', 'FaceAlpha', .5);
hold on;
plot(points(:,1), points(:,2), 'ro');
title('Triangle formed by random points');
xlabel('x-axis');
ylabel('y-axis');
axis equal;

while true
    x_message = sprintf('Enter a value between %d and %d for X: ', min(points(:, 1)), max(points(:, 1)))
    x_input = input(x_message);
    y_message = sprintf('Enter a value between %d and %d for Y: ', min(points(:, 2)), max(points(:, 2)))
    y_input = input(y_message);
    
    if x_input >= lower_limit && x_input <= upper_limit && y_input >= lower_limit && y_input <= upper_limit
        break; 
    else
        disp('Please enter values within the range of 0 to 10.'); 
    end
end

A = 1/2 * abs(x1*(y2-y3) + x2*(y3-y1) + x3*(y1-y2));
A1 = 1/2 * abs(x_input*(y2-y3) + x2*(y3-y_input) + x3*(y_input-y2));
A2 = 1/2 * abs(x1*(y_input-y3) + x_input*(y3-y1) + x3*(y1-y_input));
A3 = 1/2 * abs(x1*(y2-y_input) + x2*(y_input-y1) + x_input*(y1-y2));

if A == A1 + A2 + A3
    disp('The point is inside the triangle.');
    plot(x_input, y_input, 'bo', 'MarkerSize', 10, 'MarkerFaceColor', 'b'); 
else
    disp('The point is outside the triangle.');
    plot(x_input, y_input, 'ko', 'MarkerSize', 10, 'MarkerFaceColor', 'k'); 
end

hold off; 
