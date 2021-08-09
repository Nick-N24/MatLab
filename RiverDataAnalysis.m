% Author: Nicholas Newton
% Date: 1/23/20
% Section 10

%% RiverDataAnalysis.m
%  This program first uses an assignment to create an array that
%  has 28 rows and 3 columns. The data represents the river height of the
%  St. Joseph River in feet. The 28 rows correspond to different days in
%  February. The 3 columns correspond to three different years.

%  The program asks the user to select a specific day (1 through 28) and
%  outputs the min, max, mean, and standard deviation of the river height
%  for that day over the three years by displaying the results in the
%  Command Window.

%  Finally, the program asks the user to select a specific year and output
%  the min, max, mean, and standard deviation of the river height for all
%  the days in February of that year by displaying the results in the
%  Command Window.

% Clear memory
clear
% Clear Command Window
clc

%% Set Parameters
% Create the array of river height data (in feet) - more information is
% available in the header.
riverHeight = [8.52     6.37	5.89;
    10.27	6.05	5.68;
    9.19	6.19	6.04;
    7.54	5.77	5.91;
    8.06	6.18	6.2;
    8.31	5.93	6.1;
    8.95	5.99	5.88;
    8.99	5.92	5.74;
    8.77	6.11	5.97;
    8.55	5.49	5.92;
    8.31	5.74	5.69;
    8.32	5.74	5.67;
    8.21	5.84	5.38;
    8.13	6.18	5.02;
    7.92	5.77	5.15;
    8.09	6.49	5.36;
    7.91	7.63	5.67;
    7.49	7.41	5.67;
    7.36	6.91	5.07;
    7.4     9.06	5.45;
    7.12	14.74	5.79;
    7.27	17.33	5.74;
    7.11	16.53	5.7;
    7.19	15.58	5.67;
    7.81	15.14	5.72;
    7.61	14.71	5.68;
    7.21	14.27	5.36;
    7.04	13.8	5.69];


%% Ask Questions

% Ask for a day,d, in February
d= input('Please enter a day from 1 to 28 in February:    ');

% Ask for a year,y, in February between 1 and 3
y= input('Please enter a year number from 1 to 3:         ');

%% Calculations

% min
%min day
mind= min(riverHeight(d,1:3));
%min year
miny= min(riverHeight(1:28,y));

% max
%max day
maxd= max(riverHeight(d,1:3));
%max year
maxy= max(riverHeight(1:28,y));

% mean
%mean day
meand= mean(riverHeight(d,1:3));
%mean year
meany= mean(riverHeight(1:28,y));

% standard deviation
%min day
stdd= std(riverHeight(d,1:3));
%min year
stdy= std(riverHeight(1:28,y));

%% Display outputs

disp('    ')

% display day calculations
disp(['The values for day ',num2str(d),' are:'])
disp(['   min: ',num2str(mind), ' feet'])
disp(['   max: ',num2str(maxd), ' feet'])
disp(['   mean: ',num2str(meand), ' feet'])
disp(['   standard deviation: ',num2str(stdd), ' feet'])

disp('       ')

% display year calculations
disp(['The values for year ',num2str(y),' are:'])
disp(['   min: ',num2str(miny), ' feet'])
disp(['   max: ',num2str(maxy), ' feet'])
disp(['   mean: ',num2str(meany), ' feet'])
disp(['   standard deviation: ',num2str(stdy), ' feet'])

