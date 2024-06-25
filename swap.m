function y = swap(y,i,k)
j=i+1; l=k+1;
y1 = y(1:i); y2 = y(k:-1:j); y3 = y(l:end);
y = [y1 y2 y3];