%用抛物线法求非线性方程的根
function xr=parabola(funp,x0,x1,x2,D)
%fun为给定的非线性方程
%x1,x2,x3为给定的初始值
%D为近似值的误差界
%x为所求的非线性方程的近似解
if nargin<5         %设置D的默认值
    D=1e-6;
end
ak=inf; %给ak赋值
while abs(ak)>D
    f2=feval(funp,x2);
    f1=feval(funp,x1);
    f0=feval(funp,x0);
    ak=f2;
    ck=[(f0-f2)/(x0-x2)-(f2-f1)/(x2-x1)]/(x0-x1);
    bk=(f2-f1)/(x2-x1)+ck*(x2-x1);
    x0=x1;
    x1=x2;
    x2=x2-2*ak/[bk+sign(bk)*sqrt(bk^2-4*ak*ck)];
end
xr=x2;