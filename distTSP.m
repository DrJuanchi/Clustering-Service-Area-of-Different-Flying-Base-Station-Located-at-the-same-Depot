function dist = distTSP(y,D)
%Given a TSP solution, find the displacement
%y = TSP solution, D = Distance matrix

n = length(D);
dist = 0;
for i=1:n-1
    dist = dist+D(y(i),y(i+1));
end
dist = dist + D(y(n),y(1));