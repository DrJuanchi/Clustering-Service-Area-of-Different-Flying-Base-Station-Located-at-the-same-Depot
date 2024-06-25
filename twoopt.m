function y=twoopt(y,D)
n = length(y);
flag = 1; %For when there's no more intersections
while flag == 1
    s = distTSP(y,D);
    flag = 0;
    for i=1:n-2
        for k = i+2:n
            yT = swap(y,i,k);
            sT = distTSP(yT,D);
            if sT < s %If the solution is improved
                y = yT;
                s = sT;
                flag = 1;
            end
        end
    end
end