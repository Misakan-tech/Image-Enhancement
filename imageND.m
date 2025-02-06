% Read the original image
originalImage = imread('pr.jpg');
originalImage = im2double(originalImage); % Convert to double for processing

% Step 1: Add Noise to the Original Image
% Adding salt and pepper noise
noisyImage = imnoise(originalImage, 'salt & pepper', 0.02); % 2% noise

% Display the noisy image
figure;
imshow(noisyImage);
title('Noisy Image');

% Step 2: Denoise the Noisy Image
% Using median filter for denoising
denoisedImage = medfilt2(noisyImage, [3 3]); % 3x3 filter size

% Display the denoised image
figure;
imshow(denoisedImage);
title('Denoised Image');

% Step 3: Add Gaussian Noise to the Denoised Image
% Adding Gaussian noise
noisyDenoisedImage = imnoise(denoisedImage, 'gaussian', 0, 0.01); % Mean 0, Variance 0.01

% Display the final noisy denoised image
figure;
imshow(noisyDenoisedImage);
title('Noisy Denoised Image');
