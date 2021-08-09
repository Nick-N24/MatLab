% Nicholas Newton

% Manipulating arrays

clear
clc

%% Define Array

%Define the 3x4 array
arrayA = [24, 9, 25, 10; ...
    7 6 16 5; ...
    25 17 2 6];

%Display array
disp(arrayA)

%% Display the second column (with all the rows)

disp(arrayA(1:3,2)) % row,column
disp(arrayA(:,2)) % colon(:) includes all of the parts

%% Display the thrid row (with all columns)
disp(arrayA(3,:))

%% Change all values of 25 to 0

arrayA(1,3) = 0;
arrayA(3,1) = 0;
disp(arrayA)

%% Create a new array called arrayB
arrayB= [arrayA(2,1), arrayA(2,2);...
    arrayA(3,1), arrayA(3,2)];
disp(arrayB)

arrayB = arrayA(2:3,1:2);
disp(arrayB)
