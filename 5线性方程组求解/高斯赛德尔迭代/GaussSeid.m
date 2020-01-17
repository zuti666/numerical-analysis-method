function [x,n,G,f]=GaussSeid(A,b,x0,eps,M)
% GaussSeid.m为用高斯-赛德尔迭代法求解线性方程组
% A为线性方程组的系数矩阵
% b为线性方程组的常数向量
% x0为迭代初始向量；
% eps为解的精度控制
% M为迭代步数控制
% x为线性方程组的解
% n为求出所需精度的解实际的迭代步数

D=diag(diag(A));    %求A的对角矩阵
L=-tril(A,-1);      %求A的下三角阵
U=-triu(A,1);       %求A的上三角阵
G=(D-L)\U;           %迭代矩阵G
disp(G);
f=(D-L)\b ;          %g
disp(f);
x=G*x0+f;
disp(vpa(x,8));    %
n=1;                  %迭代次数
while norm(x-x0,inf)>=eps
    x0=x;
    x=G*x0+f;
    n=n+1;
    disp(n);
    disp(vpa(x,8));    %
    if(n>=M)
        disp('Warning: 迭代次数太多，可能不收敛！');
        return;
    end
end