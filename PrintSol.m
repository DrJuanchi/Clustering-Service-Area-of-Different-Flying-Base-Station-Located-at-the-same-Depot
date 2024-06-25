function PrintSol(y,p,c,c2)
hold on
n = length(y);
for i=1:n
    plot(p(i,1),p(i,2),c)
    cordx(i)=p(y(i),1);
    cordy(i)=p(y(i),2);
    txt=sprintf(' %d',y(i));
    text(cordx(i),cordy(i),txt)
end
cordx(n+1) = p(y(1),1);
cordy(n+1) = p(y(1),2);
plot(cordx,cordy,'color',c2)
end