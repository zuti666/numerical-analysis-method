%牛顿法解非线性方程组
function [xr,err,k]=Newton(fun,x0,Tol)
%xr为牛顿法求得近似解
%fun为定义的函数
%x0为初始值
%Tol为精确度
%err 为误差
%k为迭代次数

[f0,df]=feval(fun,x0);
if df==0
    error('d[f(x)]/dx =0 at x0');
end
d=f0/df;
k=0;
while abs(d)>Tol
    k=k+1;
    x1=x0-d;
    disp(k);
    disp('结果');
    disp(vpa(x1,8));
    disp('误差');
    disp(vpa(d,8));
    x0=x1;
    [f0,df]=feval(fun,x0);
    if df==0
        error('d[f(x)]/dx =0 at x0');
    end
    d=f0/df;
end
k=k+1;
x1=x0-d;
disp(k);
disp('结果');
disp(vpa(x1,8));
disp('误差');
disp(vpa(d,8));

xr=x1;
err=abs(d);
