% Author: Nicholas Newton
% Date: 2/12/20
% Section 10

% HW 4
% Problem 5 animating damped motion

% Start with the plotdamped.m code 
% Change the code so there is a variable doAnimate that is
% set at the beginning of the code and is either true or false

% If doAnimate is false, the program should create a plot
% of the curve with no animation
% If doAnimate is true, the plot must now be animated, 
% showing the current point as a red circle and the 
% previous points as a blue line 

clear
clc
clf

%% set animate
% ask of true or false
askme=input('Should I animate (true or false):      ');
doAnimate=askme;

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

% use if statement to animate if do animate is true
if doAnimate==true
    for ix=1:Nx
        plot(x(1:ix),fx(1:ix),'b',...
            x(ix),fx(ix),'ro')
        axis(1.2*[xmin,xmax,-2,2])
        xlabel('x')
        ylabel('f(x)')
        title('Graph of f(x)=e^(-x/a) *cos((2*pi*x)/lamda)')
        grid on
        drawnow
    end
else
    plot(x,fx,'b-')
end

% label function
xlabel('x')
ylabel('f(x)')
title('Graph of f(x)=e^(-x/a) *cos((2*pi*x)/lamda)')
grid on
