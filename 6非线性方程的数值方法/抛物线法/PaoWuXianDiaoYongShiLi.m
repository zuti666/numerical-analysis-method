%调用抛物线法求解非线性方程
fplot(@(x)(x.^3*cos(x)+2*x.^2-2*sin(x)),[1,3]);
hold on;
plot(xlim,[0,0],'m-.');
a=1;b=2;x0=3;
%调用抛物线法解非线性方程
xr=parabola('funp',a,b,x0);
yxr=feval('funp',xr);
plot(xr,yxr,'r*');
disp('抛物线法求得方程近似解为：');disp(xr);