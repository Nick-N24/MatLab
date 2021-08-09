%%n

clear
clc
clf

%% Calling and Animating

% Set Parameters
tF=4.5;
Nt=450;
yInit=7;
a=1.05;

% call function
[t, y, isLessThanHalf] = myfunc(tF, Nt, yInit, a);

% if contitional for true/false
if isLessThanHalf==true
    disp('The final value of y is less than half the initial value!')
else
    disp('The final value of y is not less than half the initial value!')
end

% animated plot with t and y as axis
% red circle, to left is blue dash, to right is black solid


for it= 1:Nt
    plot(t,y,'k',t(it),y(it),'ro', t(1:it),y(1:it),'b--')
    xlabel('t Values');
    ylabel('y Values');
    axis([0,tF,0,yInit]);
    drawnow
end

%% Section: Analyzing thr River Data Height

% load file
riverHeight=load('RiverDataD.txt');

% ask user for a day and check it
daynum=false;

while ~daynum
    day=input('Please enter a day from 1 to 28:    ');
    if day>0 && day<29
        daynum=true;
    else
        daynum=false;
    end
end

% ask user for a year no check
year=input('Please enter a year from 1 to 3:   ');

% Display the river height
disp('    ')
disp(['The river height on that day was ',num2str(riverHeight(day,year)),' feet.'])
disp('    ')

% nested for loop

% set size of row/col
Nrows=28; % 28 days
Ncols=3; % 3 years

% set initial min
min=riverHeight(1,1);
minrow=1;
mincol=1;

% loop
for icol=1:Ncols
    for irow=1:Nrows
        if riverHeight(irow,icol)>13.5
            disp(['On day ', num2str(irow),...
                ' in year ', num2str(icol),...
                ', the river height was above 13.5 feet.'])
        end
        if min<riverHeight(irow,icol)
            min=min;
            minrow=minrow;
            mincol=mincol;
        else
            min=riverHeight(irow,icol);
            minrow=irow;
            mincol=icol;
        end
    end
end

% display result of min for one of the day/years
disp('   ')
disp(['On day ', num2str(minrow),...
                ' in year ', num2str(mincol),...
                ', the minimum river height of ',num2str(min),' feet occurred.'])


%% Section: Die Rolling

% while loop to keep going until 2 ones are rolled 5x or 2 fours are rolled
% 5x

% set die counters
ones=0;
fours=0;
total=0;

% make condition
stoproll=false;

% loop
while ~stoproll
    die1=randi(6);
    die2=randi(6);
    if die1==1 && die2==1
        ones=ones+1;
    elseif die1==4 && die2==4
        fours=fours+1;
    end
    total=total+1;
    if ones==5 || fours==5
        stoproll=true;
    end
end

% display results
disp('   ')
disp(['A total of ', num2str(total), ' rolls were needed.'])
disp(['A pair of ones was rolled ', num2str(ones), ' times.'])
disp(['A pair of fours was rolled ', num2str(fours), ' times.'])
