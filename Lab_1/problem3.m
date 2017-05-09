%% LAB 1 - Image transformations
% UE2-3 Image Processing
% Group: Meldrick Reimmer and Selma Boudissa

%% basic command
clc % clear command window
close all % close all the figures
clear all % clear all the variables

%% Problem 3
matrix = LoadMatrix(); % loadMatrix is a function to load the image called problem1 
matrix = arrayfun(@(x) 7-x,matrix);