clear all;
A=[8 2 4 1 4;2 9 8 2 3;4 8 9 3 2;1 2 3 7 1;4 1 2 3 7];
b=[5 4 3 2 1]';
c=chol(A)
x=c\(c'\b)