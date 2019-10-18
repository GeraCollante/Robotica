% Your two points
P1 = [0,0,0];
P2 = [1,0,0];

% Their vertial concatenation is what you want
pts = [P1; P2];

% % Because that's what line() wants to see    
% line(pts(:,1), pts(:,2), pts(:,3))

% Alternatively, you could use plot3:
plot3(pts(:,1), pts(:,2), pts(:,3));grid;