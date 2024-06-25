%Creating a Matrix of Distances 
function D = MatrixDist(x)
cordx = x(:,1);
cordy = x(:,end);
for i=1:length(cordx)
    for j=1:length(cordy)
        x1 = cordx(i);
        x2 = cordx(j);
        y1 = cordy(i);
        y2 = cordy(j);
        %Calculate distances between points
        distEucledian = sqrt((x2-x1)^2+(y2-y1)^2);
        D(i,j) = distEucledian;
    end
end
