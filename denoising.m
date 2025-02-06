% Read the noisy image
noisyImage = imread('pr.jpg'); % Replace with your image file
if size(noisyImage, 3) == 3
    noisyImage = rgb2gray(noisyImage); % Convert to grayscale if it's a color image
end

% Display the noisy image
figure;
imshow(noisyImage);
title('Noisy Image');

% Apply Gaussian filter for denoising
filterSize = 5; % Size of the filter
sigma = 1.5; % Standard deviation of the Gaussian
denoisedImage = imgaussfilt(noisyImage, sigma, 'FilterSize', filterSize);

% Display the denoised image
figure;
imshow(denoisedImage);
title('Denoised Image');

% Optionally, save the denoised image
imwrite(denoisedImage, 'denoised_image.jpg');
