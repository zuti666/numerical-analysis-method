%割线法解非线性方程
function [xr,err,k]=secant(fun,x0,x1,Tol)
%fun为给定的非线性方程
%x0,x1为给定的初始值
%Tol为近似值的误差界
%xr为割线法求得的近似解
if nargin ==3
    Tol=1e-6;
end
f0=feval(fun,x0);
f1=feval(fun,x1);
k=1;
while abs(x0-x1)> Tol
    x2=x1-f1*(x1-x0)/(f1-f0);  %割线法迭代公式
    f0=f1;
    x0=x1;
    x1=x2;
    f1=feval(fun,x1);
    k=k+1;
end
xr=x2;
err=abs(x0-x1);


    