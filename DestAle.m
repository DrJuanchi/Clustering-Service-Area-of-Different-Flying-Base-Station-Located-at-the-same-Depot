function D = DestAle(y,max_iter,D)
k=0;
while k<max_iter
    yv = Neighbor(y);
    if distTSP(yv,D)<distTSP(y,D)
        y = tv;
        k=0;
    else
        k=k+1;
    end
end