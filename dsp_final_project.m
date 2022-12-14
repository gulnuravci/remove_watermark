% IGNORE THIS PAGE%





% Load image
img = imread(input("Please enter filename: ",  's'));
% imshow(image);

N = 16*ones(1,16);
matrices = mat2cell(img, N, N);
celldisp(matrices);
image(A);

% M = median(A, "all");
% disp(A);

% A(1:3, 1:3) = M;
% disp(A);
% image(A);

% Cut matrix into smaller matrices
% matrices = mat2cell(X, [3 3]);
% celldisp(C)

% User select the area of the watermark
% area = drawrectangle();
% mask = createMask(area);
% disp(mask);
% imshow(mask);

% Find the dominant color
% Loop through each pixel and find the dominant color around the pixel

% function matrix = select_surrounding_matrix(img_data)
%     do something
% end
% 
% function pixel_color = calculate_avg_pixel(matrix)
%     pixel_color = mean(A, "all");
% end