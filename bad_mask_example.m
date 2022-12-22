% Load image and convert to indexed image
filename = input("Please enter filename: ", 's');
RGB = imread(filename);

% Convert RBG image to indexed image
[indexed,cmap] = rgb2ind(RGB,50);

% Display indexed image
imagesc(indexed)
colormap(cmap)
axis image

% User select rectangular mask of the watermarked area
area = drawrectangle();
mask = createMask(area);
imshow(mask);

% Get rid of watermark
img_watermark_removed = inpaintExemplar(RGB,mask);

% Show original image
subplot(2,2,1);
imshow(RGB);
title('Original image');

% Show original mask
subplot(2,2,2);
imshow(mask);
title('User selected mask area');

% Show image with the watermark removed
subplot(2,2,3);
imshow(img_watermark_removed);
title('Image with watermark removed');
