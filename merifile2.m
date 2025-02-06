close all;
clc;
I=imread('E:\Image Enhancement\pr.jpg');
figure
subplot(121)
imshow(I)

Q=I-200; % Modification of Image
imwrite(Q,'NewPR.jpg');

E=imread('E:\Image Enhancement\NewPR.jpg');
subplot(122); % 1 row 2 columns and 2nd Position
imshow(E)
