% Load image and convert to indexed image
filename = input("Please enter filename: ", 's');
RGB = imread(filename);

% Convert RBG image to indexed image
[indexed,cmap] = rgb2ind(RGB,50);

% Display indexed image
imagesc(indexed)
colormap(cmap)
axis image

% User sample water mark color by right-clicking anywhere within the watermark
watermark_pixel_color = impixel();

% Create mask of this color
mask = roicolor(indexed, watermark_pixel_color);

% Create a morpological rectangular structing element of row by column pixels
rows = input("dilate by how many pixels (rows): ");
columns = input("dilate by how many pixels (columns): ");
se = strel('rectangle', [rows,columns]);

% Create a second mask that is the dilated version of the initial
mask2 = imdilate(mask,se);

% Get rid of watermark
img_watermark_removed = inpaintExemplar(RGB,mask2);

% Show original image
subplot(2,2,1);
imshow(RGB);
title('Original image');

% Show original mask
subplot(2,2,2);
imshow(mask);
title('Original mask');

% Show dilated mask
subplot(2,2,3);
imshow(mask2);
title('Dilated mask');

% Show image with the watermark removed
subplot(2,2,4);
imshow(img_watermark_removed);
title('Image with watermark removed');