% runs a single turn of the game
% Generate the computer?s choice using rand
% Prompt the user for the choice "r," "p," or "s."
% Decide who won the turn (human or computer)
% Display the results

% keeps going for a set number of wins keeping track of w/l/t

clear
clc

%% Set Parameters

% have the computer pick a random number assigned to rock, paper, or scissors
r=1;
p=2;
s=3;

% win loss tie counters
win=0;
lose=0;
tie=0;


%% decide victor
while win<100
p1= input('Rock, Paper, or Scissors? Enter r, p, or s:   ');
cpu= randi(3);
switch p1
    case 1
        if cpu==3
            disp('Rock beats scissors, you win!')
            win=win+1;
        elseif cpu==2
            disp('Paper beats rock, you lose!')
            lose=lose+1;
        else
            disp('Tie!')
            tie=tie+1;
        end
        
    case 2
        if cpu==1
            disp('Paper beats rock, you win!')
            win=win+1;
        elseif cpu==3
            disp('Scissors beats paper, you lose!')
            lose=lose+1;
        else
            disp('Tie!')
            tie=tie+1;
        end
    case 3
        if cpu==2
            disp('Scissors beats paper, you win!')
            win=win+1;
        elseif cpu==1
            disp('Rock beats scissors, you lose!')
            lose=lose+1;
        else
            disp('Tie!')
            tie=tie+1;
        end
end
disp(['Number of wins: ',num2str(win)])
disp(['Number of losses: ',num2str(lose)])
disp(['Number of ties: ',num2str(tie)])
disp('    ')
end

