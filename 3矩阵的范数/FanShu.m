clc;clear ;close all;
A=[2 4 6;
   1 3 5;
   0 2 9;]; %矩阵A
b=[7 5 4]';%向量b

nA1=norm(A,1); %矩阵A的1范数
nA2=norm(A,2); %矩阵A的2范数
nAinf=norm(A,inf); %矩阵A的无穷范数
nAf=norm(A,'fro'); %矩阵A的F范数

nb1=norm(b,1); %向量b的1范数
nb2=norm(b,2); %向量b的2范数
nbinf=norm(b,inf); %向量b的无穷范数
nbf=norm(b,'fro'); %向量b的1范数
