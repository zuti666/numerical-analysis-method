clc;clear;
A=[3 -1 0;
   1 6 -2;
   4 -3 8];  %系数矩阵 改
b=[2,-4,5]'; %常数项 改
Tol=1e-3;    %误差精度
w=1.2   %松弛因子 改
max1=200; %最大迭代次数
x0=[0,0,0]'; %初始值 
[x,n,flag]=sor(A,b,x0,Tol,w,max1);
%x为方程组的解
% n为迭代次数
% flag为指标变量，flag='OK！'表示迭代收敛达到指标要求
disp('迭代次数');
disp(n);
