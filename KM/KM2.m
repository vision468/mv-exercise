<<<<<<< HEAD
img = imread('img.jpg');

redChannel = img(:, :, 1);
greenChannel = img(:, :, 2);
blueChannel = img(:, :, 3);

redImage = cat(3, redChannel, zeros(size(redChannel), 'like', redChannel), zeros(size(redChannel), 'like', redChannel));
greenImage = cat(3, zeros(size(greenChannel), 'like', greenChannel), greenChannel, zeros(size(greenChannel), 'like', greenChannel));
blueImage = cat(3, zeros(size(blueChannel), 'like', blueChannel), zeros(size(blueChannel), 'like', blueChannel), blueChannel);

figure(1);
imshow(redImage);
title('Full RED');

figure(2);
imshow(greenImage);
title('Full GREEN');

figure(3);
imshow(blueImage);
title('Full BLUE');

% old VERSION
% image = imread('img.jpg'); 

% red_channel = image;
% green_channel = image;
% blue_channel = image;

% red_channel(:, :, 2:3) = 0; 
% green_channel(:, :, [1, 3]) = 0; 
% blue_channel(:, :, 1:2) = 0; 
% figure(1);
% imshow(red_channel);
% title('Figure 1: Red Channel Only');

% figure(2);
% imshow(green_channel);
% title('Figure 2: Green Channel Only');

% figure(3);
% imshow(blue_channel);
% title('Figure 3: Blue Channel Only');

=======

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
>>>>>>> b162f985f424402579adec07f01969234b3bfb6c
