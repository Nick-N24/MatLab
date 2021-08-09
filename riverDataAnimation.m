% Author: Nicholas Newton
% Date: 2/3/20
% Section 10

%  Reads in the file riverHeightData.txt
% Asks the user for a year (1-3)
% Animates the river height over the course of the month of February
% for the year input by the user
% Include horizontal lines for the various flood stages
% Include a legend identifying the different lines
% set the legend so it appears during the animation
% Plot the river height data as a series of points since it is observed data
% Set the axes so that the plot area does not change during the animation

clear
clc

%% load file

% load the matrix from the riverHeightData.txt file
dataInput= load('riverHeightData.txt');

%% Set Parameters

% Ask for the year using the input function
year= input('Please enter in a year (1, 2, or 3):     ');

% set the amount of days in Feb to 28
days=28;
%% year animation

% create x value array for animation
xinit=1;
x=linspace(xinit,days,days);

%% flood stages arrays
% create x values for straight lines
xline=[0,days];

% create y line arrays
action=ones(1,2)*9; % at 9ft action
minor=ones(1,2)*11; % at 11 ft major
moderate=ones(1,2)*13; % at 13 ft moderate
major=ones(1,2)*15; % at 15 ft major


%% plot functions

% legend variabe
ltitle=(['February Data- Year ',num2str(year)]);

% use a for loop to plot
for ix=1:days
    plot(x(1:ix),dataInput(1:ix,year),'ro',...
        xline,action,...
        xline,minor,...
        xline,moderate,...
        xline,major)
    axis([0,days,0,30])
    grid on
    xlabel('Day in February')
    ylabel('River Height (ft)')
    title(['River Height of February in Year ',num2str(year)])
    legend(ltitle,...
        'Action',...
        'Minor',...
        'Moderate',...
        'Major',...
        'Location','NorthWest')
    drawnow
    
    
end







