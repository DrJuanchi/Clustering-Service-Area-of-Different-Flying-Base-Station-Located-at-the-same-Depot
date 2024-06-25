function y = NNH(x0,D)
%Nearest neighbor Heuristics
%xo = starting point
%D = Distance matrix
%Returns y: path
n = length(D);
y = x0;
D(:,x0) = inf; % Change the distance matrix to infinity so it never visits the point again
for i = 1: n-1 %For the rest of the points
    [m x0] = min(D(x0,:)); %Look for the point with the smallest distance
    y = [y x0];
    D(:,x0) = inf;
end