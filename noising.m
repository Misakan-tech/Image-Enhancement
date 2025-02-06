% Read the denoised image
denoisedImage = imread('denoised_image.jpg'); % Replace with your denoised image file

% Display the denoised image
figure;
imshow(denoisedImage);
title('Denoised Image');

% Add Gaussian noise to the denoised image
meanNoise = 0; % Mean of the noise
variance = 0.01; % Variance of the noise
noisyDenoisedImage = imnoise(denoisedImage, 'gaussian', meanNoise, variance);

% Display the noisy denoised image
figure;
imshow(noisyDenoisedImage);
title('Noisy Denoised Image');

% Optionally, save the noisy image
imwrite(noisyDenoisedImage, 'noisy_denoised_image.jpg');
