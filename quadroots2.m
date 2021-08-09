

clear
clc

% Create a Quadratic root solver
% when given a polynomial in standard form
% f(x) = ax^2 + bx + c

%% Set Paramaters

% Find the three values needed for the formula
a= input('Please type the a value:     ');
b= input('Please type the b value:     ');
c= input('Please type the c value:     ');


%% Calculations

zPos=(-b + sqrt(b^2 - 4*a*c))/(2*a);
zNeg=(-b - sqrt(b^2 - 4*a*c))/(2*a);



%% Display Output

disp('      ')
disp(['The roots are: ',num2str(zPos), ' and ',num2str(zNeg),'.']);
