% User select the area of the watermark
% Find the dominant color
% Loop through each pixel and find the dominant color around the pixel

A = [13 13 13; 13 200 13; 13 13 13];
M = median(A, "all");
disp(A);

A(1:3, 1:3) = M;
disp(A);
image(A);
