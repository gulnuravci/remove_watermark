% Load image and convert to indexed image
filename = input("Please enter filename: ", 's');
RGB = imread(filename);
[indexed,cmap] = rgb2ind(RGB,50);
imagesc(indexed)
colormap(cmap)
axis image
% imshow(indexed);

% User sample water mark color
watermark_pixel_color = impixel();
disp(watermark_pixel_color);

% Create mask of this color
mask = roicolor(indexed, watermark_pixel_color);
figure;
imshow(mask);

% Get rid of watermark
img_watermark_removed = inpaintExemplar(RGB,mask);
figure;
imshow(img_watermark_removed);