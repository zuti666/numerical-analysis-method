%%
A=magic(5);%生成5阶魔方矩阵
%特征分解分解为特征值和对应的特征向量 AV=VA
%若特征向量线性无关，则V可逆有A=VAV^-1
[V,D]=eig(A);
%%
%choleshy针对对称正定矩阵的分解
% A=R'*R
A=pascal(5); %生成5阶帕斯卡矩阵 是一个对称正定矩阵
R=chol(A);
A0=R'*R ; 
%%
%LU分解
%A=LU L为下三角矩阵 U为上三角矩阵 [L,U]=lu(A);
%[L,U,P]=lu(A) LU=PA
A=rand(3,4);
[L,U]=lu(A);
[L,U,P]=lu(A);
%%
%QR分解 
%A=QR
A=[2 4 6 8;
   1 3 5 7;
   0 2 9 11;];
[q,r]=qr(A);
%%
%SVD分解
A=[1 5 9;
   2 6 10;
   3 7 11;
   4 8 12;];
[S,U,V]=svd(A);
