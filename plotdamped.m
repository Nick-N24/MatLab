% Author: Nicholas Newton
% Date: 1/29/20
% Section 10

% plots the function 
% f(x)= e^(-x/a) *cos((2*pi*x)/lamda)
% a and lamda can be changed in the program to vary the parametes
% the domain is from

clear
clc

%% Set Parameters
xmax=1;
xmin=-1;
Nx=100;

lamda=1;
a=1;

%% Set independent variable
x=linspace(xmin,xmax,Nx);

%% calculate the function values
fx=exp(-x/a).*cos(2*pi*(x/lamda));


%% plot the function
plot(x,fx,'r-')

% label function
xlabel('x')
ylabel('f(x)')
title('Graph of f(x)=e^(-x/a) *cos((2*pi*x)/lamda)')
grid on




