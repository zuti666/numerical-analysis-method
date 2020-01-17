function [x,n]=Jacobifun(A,b,x0,eps,varargin)
% Jacobifun.m函数为用于雅可比迭代法求解线性方程组
% A为线性方程组的系数矩阵；
% b为线性方程组的常数向量
% x0为迭代初始向量；
% eps为解的精度控制
% varargin为迭代步数控制
% x为线性方程组的解
% n为求出所需精度的解实际的迭代步数
if nargin==3
    eps= 1.0e-6;
    M  = 200;
elseif nargin<3
    error
    return
elseif nargin ==5
    M  = varargin{1};
end  
D=diag(diag(A));    %求A的对角矩阵
L=-tril(A,-1);      %求A的下三角阵
U=-triu(A,1);       %求A的上三角阵
B=D\(L+U);
f=D\b;
x=B*x0+f;
n=1;                  %迭代次数
while norm(x-x0)>=eps
    x0=x;
     x=B*x0+f;
    n=n+1;
    if(n>=M)
        disp('Warning: 迭代次数太多，可能不收敛！');
        return;
    end
end