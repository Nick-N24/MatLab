% Final Project

% create figure window
    %Figure window width and height defined by user

% Create disks
       %The disks are randomly placed and not overlapping
       %user defines number of disks

% Start the animation after the disks are created; 
       %the animation must incorporate the full functionality
       %of general disk motion, wall interactions, and disk
       %interactions outlined in the Project Document

% End the animation by incorporating a stopping
       %condition of n wall or ball interactions defined by user
       %animation ends
% program will interact with GUI app, animation on a separate figure window

clear
clc

%% create window
w=200; % need to add app function user input
h=300; % need to add app function user input
f = createWindow(w, h);

%% create discs setup
r=5; % radius
n=25;% need to add app function user input number of balls
m=n+1; % variable used in for loop when setting location
overlap=false; % overlap condition in while loop for ball location

% create initial ball location arrays
wo= zeros(1,m); % initialize array for x location of initial center
ho=zeros(1,m); % initialize array for y location of initial center

b=zeros(1,n); % array needed later in program
initial= 8; % avoid starting on a wall

%% make n discs with initial velocities

% set initial velocities
for i=1:n
    dx(i)=randi([1,2]);
    dy(i)=randi([1,2]);
    
    % prevents dx/dy from being 0, turns a randomized 2 into -1
    switch dx(i)
        case 2
            dx(i)=-1;
    end
    switch dy(i)
        case 2
            dy(i)=-1;
            
    end
end

% generate balls 1:m-1 and nested while for loop to make sure they do not
% overlap
% the while loop ensures the w and h initial locations on arrays wo and ho
% remain generating until it is not a match
% the inner for loop checks the new w and h with all the other locations
% generated
for i=1:m-1
    while ~overlap
        wo(i)=randi([initial,w-initial]);
        ho(i)=randi([initial,h-initial]);
        for j=1:m-1
            if wo(i) == wo(j+1) || ho(i)==ho(j+1) && wo(i)~=wo(j) && ho(i)~=ho(j)
                overlap=false;
            else
                overlap=true;
            end
        end
    end
    b(i) = drawBall(wo(i), ho(i), r, [rand(1),rand(1),rand(1)]);
    pause(0.1);
    overlap=false; % once a while loop is completed, a ball is made
end

%% ball ball/wall interactions

% initial parameters for stopping conditions
countwall=0;
w_hit=200; % add app function
countdisc=0;
d_hit=200; % add app function

stop=false;

% while loop keeps animation until one of the stopping conditions is met
while ~stop
    % wall interactions
    for i=1:n
        [x(i),y(i)] = getCenter(b(i));
        % right wall
        if x(i)>= w-r
            dx(i) = -dx(i);
            countwall=countwall+1; % counter after each wall interaction
        end
        % left wall
        if x(i)< r
            dx(i) = -dx(i);
            countwall=countwall+1;
        end
        % top wall
        if y(i)>= h-r
            dy(i) = -dy(i);
            countwall=countwall+1;
        end
        % bottom wall
        if y(i)<r
            dy(i) =-dy(i);
            countwall=countwall+1;
        end
        
    end
    % ball ball interactions
    % nested for loop checks all values for each ball-ball interaction
    for ie = 1:n-1
        [x(ie),y(ie)]=getCenter(b(ie));
        for ig= ie+1:n
            [x(ig),y(ig)] = getCenter(b(ig));
            dist = find_Distance(x(ie), y(ie), x(ig), y(ig));
            % find distance between balls center
            % if the two centers are within 10(with each ball r=5) they are
            % 'touching,' so they must change direction
            if dist <=10
                countdisc= countdisc +1; % counter for each ball interaction
                if dx(ie)== dx(ig)
                    dy(ie)= -dy(ie);
                    dy(ig)= -dy(ig);
                elseif dy(ie) == dy(ig)
                    dx(ie) = -dx(ie);
                    dx(ig) = -dx(ig);
                else
                    dy(ie) = -dy(ie);
                    dy(ig) = -dy(ig);
                    dx(ie) = -dx(ie);
                    dx(ig) = -dx(ig);
                end
            end
        end
    end
    % move the balls in the x and y directions
    for i = 1:n
        xMove(b(i), dx(i))
        yMove(b(i), dy(i))
    end
    % animate movement
    drawnow
    
    % stopping condition checked at the end of each loop
    if countwall >= w_hit % wall condition
        stop = true;
        countwall=w_hit;
        
    elseif countdisc >= d_hit % ball condition
        stop = true;
        countdisc=d_hit;
    end
end
 

        
