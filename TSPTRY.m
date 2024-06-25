n = input('Points to generate: ')
p = randi([-100 100],[n,2]);
tic
x=p;
D=MatrixDist(x);

%NNH
%y = NNH(1,D)
PrintSol(y,x,D)
d1 = distTSP(y,D)

%2opt
y = twoopt(y,D)
PrintSol(y,x,D)
d3 = distTSP(y,D)