function d = find_Distance(xc1,yc1,xc2,yc2)
% function that returns the distance between the centers 
% of two disks based on the x and y coordinates of the center
% of the two disks.

d = sqrt((xc2 - xc1)^ 2 + (yc2 - yc1)^2);