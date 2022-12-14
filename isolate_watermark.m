% Load image and convert to indexed image
filename = input("Please enter filename: ", 's');
RGB = imread(filename);
[indexed,cmap] = rgb2ind(RGB,256);
imagesc(indexed)
colormap(cmap)
axis image

% User sample water mark color
watermark_pixel_color = impixel();
disp(watermark_pixel_color);

% Create mask of this color
mask = roicolor(indexed, watermark_pixel_color);
disp(mask);
imshow(mask);