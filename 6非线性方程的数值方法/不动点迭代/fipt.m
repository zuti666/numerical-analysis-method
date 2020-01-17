%迭代法求解非线性方程
function [p0,k,err,p]=fipt(fun,p0,tol,max1)
% fun为给定的迭代函数
%p0为给定的初始值
%max1为允许的最大迭代次数
for k=2:max1
%k为所进行的迭代次数加1
%p为不动点的近似值
%err为误差
P(1)=p0;
    P(k)=feval(fun,P(k-1));
    err=abs(P(k)-P(k-1));
    p=P(k);
    if err<tol
        break;
    end
    if k==max1
        disp('达到最大迭代次数，退出迭代');
    end
end

