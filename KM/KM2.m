
image = imread('img.jpg'); 

red_channel = image;
green_channel = image;
blue_channel = image;

red_channel(:, :, 2:3) = 0; 
green_channel(:, :, [1, 3]) = 0; 
blue_channel(:, :, 1:2) = 0; 
figure(1);
imshow(red_channel);
title('Figure 1: Red Channel Only');

figure(2);
imshow(green_channel);
title('Figure 2: Green Channel Only');

figure(3);
imshow(blue_channel);
title('Figure 3: Blue Channel Only');