%% LAB 3 - Morphological mathematics 
% UE2-3 Image Processing
% Group: Meldrick Reimmer and Selma Boudissa

%% basic command
clc % clear command window
close all % close all the figures
clear all % clear all the variables

%% Problem 1
%load an image 
image=imread('./images/hubble.png');

%binarize an image
BW = im2bw(image, 0.2); 

% Structure choice
pattern3C = [0 1 0;1 1 1;0 1 0]; % code the pattern as matrix
pattern  = pattern3C;

%erosion operator
resultEro = erosion(BW,pattern);

%dilation operator
resultDila=dilatation(BW,pattern);

%opening operator
resultOpen = opening(BW,pattern);

%closing operator
resultClose = closing(BW,pattern);


% Displaying plot
figure()
subplot(3,2,1)
imshow(image);
title('Original image')
subplot(3,2,2)
imshow(BW);
title('Binary image')
subplot(3,2,3);
imshow(resultEro);
title('Erosion');
subplot(3,2,4);
imshow(resultDila);
title('Dilatation');
subplot(3,2,5);
imshow(resultClose);
title('Closing');
subplot(3,2,6);
imshow(resultOpen);
title('Opening');
