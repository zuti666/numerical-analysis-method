function [r,n]=StablePoint(F,x0,eps)
% StablePoint.m函数为用不动点法求解非线性方程组
% F为待求解的非线性方程组
% x0为给定的初始值
% eps为解的精度
% r为所求非线性方程的一组解
% n为迭代步数
if nargin==2
    eps=1.0e-6;
end
x0 = transpose(x0);
n=1;
tol=1;
while tol>eps
    r= subs(F,findsym(F),x0);                           %迭代公式
    tol=norm(r-x0);                %注意矩阵的误差求法，norm为矩阵的欧几里德范数
    n=n+1;
    x0=r;
    if(n>100000)                        %迭代步数控制
        disp('迭代步数太多，可能不收敛！');
        return;
    end
end