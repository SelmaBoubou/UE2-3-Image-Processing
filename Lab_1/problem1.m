%% LAB 1 - Image transformations
% UE2-3 Image Processing
% Group: Meldrick Reimmer and Selma Boudissa

%% basic command
clc % clear command window
close all % close all the figures
clear all % clear all the variables


%% Problem1
% Goal: create a function that allow you to generate matrix
% file: myfunction

MATRIX =(myfunction([0 1 3 5 7 7 6 4 2 1],10));
d = size(MATRIX);% size [10,10]

imwrite(MATRIX,'problem1.jpg');
m=imread('problem1.jpg');
imshow(m);
