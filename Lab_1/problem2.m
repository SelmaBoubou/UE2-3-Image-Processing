%% LAB 1 - Image transformations
% UE2-3 Image Processing
% Group: Meldrick Reimmer and Selma Boudissa

%% basic command
clc % clear command window
close all % close all the figures
clear all % clear all the variables

%% Problem 2
img =(myfunction([0 1 3 5 7 7 6 4 2 1],10));
img2 = myfunction2(img,10,10);
imwrite(img2,'abc.jpg');
a = imread('abc.jpg');
imshow(a);