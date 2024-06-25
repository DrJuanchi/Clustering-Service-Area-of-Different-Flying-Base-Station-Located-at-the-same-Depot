function yv = Neighbor(y)
n = length(y);
i = sort(randperm(n,2));
i1 = i(1); i2 = i(2);
aux = y(i1);
yv = [y(1:i2) aux y(i2+1:end)];
yv(i1) = [];