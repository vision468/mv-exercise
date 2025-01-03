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

