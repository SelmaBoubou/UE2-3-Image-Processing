%% LAB 3 - Morphological mathematics 
% UE2-3 Image Processing
% Group: Meldrick Reimmer and Selma Boudissa

%% basic command
clc % clear command window
close all % close all the figures
clear all % clear all the variables

%% Problem 2
%load an image 
image=imread('./images/moon.png');
% transform into gray level using rgb2gray
imageGray=rgb2gray(image);

%binarize an image
BW = im2bw(imageGray, 0.5); % we choose a level of 0.5 in the midway of black and white [0-1] 

% Structure choice
pattern5M = ones(5); 
pattern  = pattern5M;

%erosion operator
resultEro = erosionGray(imageGray,pattern);

%dilation operator
resultDila=dilatationGray(imageGray,pattern);
 
%opening operator
resultOpen = openingGray(imageGray,pattern);
 
%closing operator
resultClose = closingGray(imageGray,pattern);


% Displaying plot
figure()
subplot(3,2,1)
imshow(imageGray);
title('Gray transformation on original image')
subplot(3,2,2)
imshow(BW);
title('Binary')
subplot(3,2,3);
imshow(resultEro);
title('Erosion Gray');
subplot(3,2,4);
imshow(resultDila);
title('Dilatation Gray');
subplot(3,2,5);
imshow(resultClose);
title('Closing Gray');
subplot(3,2,6);
imshow(resultOpen);
title('Opening Gray');

