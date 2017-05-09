%% Selma Boudissa and Meldrick Reimmer
% 21/03/17
% Image Processing
% Lab2 - Image filtering and histogram
clc 
close all
clear all


 %% Problem 1
 
 % Read and display the image
   figure(1)
   subplot( 2,2,1)
   Image = imread ('galaxy.png'); %Load the image 
   imshow (Image)
   title('Original Image')
   
% % Test Robert Gradient
  subplot(2,2,2)
  rob= edge(Image, 'Roberts');
  imshow(rob);
  title('Robert Gradient')
   
 % Test Sobel
  subplot(2,2,3)
  SobelTest = edge(Image,'Sobel');
   imshow(SobelTest);
   title('Sobel Gradient')
 
 % Test Laplacian 
  subplot(2,2,4)
  Laplacian = edge(Image,'log') % Apply Laplacian filter
  imshow(Laplacian);
  title('Laplacian')

%% Problem 2

 % Read and display the image
   figure(2)
   subplot( 1,3,1)
   Image = imread ('galaxy.png'); %Load the image 
   imshow (Image)
   title('Original Image')

% Add a gaussian white noise on the image
  subplot(1,3,2)
  Addnoise = imnoise(Image,'gaussian') ;
  imshow (Addnoise) 
  title ('gaussian white noise')
 
 % Apply a spatial low-pass filter to eliminate the artefacts
   subplot(1,3,3)
   h = fspecial('gaussian', [7 7], 0.9);
   filtered = imfilter(Image, h); 
   imshow(filtered)
   title(' spatial low-pass filter');
 
 % Calculate the PSNR of the image with noise 
  [peaksnr, snr] = psnr(Addnoise, Image);
  fprintf('\n The PSNR value of the image with noise is %0.4f', peaksnr); 
 
% Calculate the PSNR of the filtered image 
  [peaksnr, snr] = psnr(filtered, Image); 
  fprintf('\n The PSNR value of the filtered image is %0.4f', peaksnr); 


% Applying a spatial high-pass filter
% Spatial High pass filter

% First Kernel
 kernel1 = -1 * ones(3)/9;
 kernel1(2,2) = 8/9;

% Second Kernel
kernel2 = [-1 -2 -1; 0 0 0; 1 2 1];
 
% Third Kernel
kernel3 = [-1 0 1; -2 0 2; -1 0 1];

% Appling filters
filteredImage1 = imfilter(single(Image), kernel1);
filteredImage2 = imfilter(single(Image), kernel2);
filteredImage3 = imfilter(single(Image), kernel3);


%Plotting the Results. 

figure(3)
subplot( 2,2,1)
Image = imread ('galaxy.png'); %Load the image 
imshow (Image)
title('Original Image')

subplot(2,2,2);
imshow(filteredImage1, []);
title('Kernel 1');

subplot(2,2,3);
imshow(filteredImage2, []);
title('Kernel 2');

subplot(2,2,4);
imshow(filteredImage3, []);
title('Kernel 3');

 
%% Problem 3
% % Read and display the image
  Img = imread ('./images/mri.png'); %Load the image 
  figure (4); 
  title ('Original image')
  imshow (Img) 


%  Enhance the contrast on the scan image 
 H= imadjust (Img)   
 figure (5) , title ('Image after contrast enhanced')
 imshowpair (Img, H , 'montage') 

