fplot(@(x)(exp(x)-x-5),[-5,5]);
grid on;
hold on;
plot(xlim,[0,0],'r:'); %绘制零刻度线
hold on;
x0=3.5;
x1=3;
Tol=1e-6;
[xr,err,k]=secant('funs',x0,x1,Tol);
yxr=feval('funs',xr);
plot(xr,yxr,'r*');
disp('割线法求得近似解为');disp(xr);
disp('误差');disp(err);
disp('次数');disp(k);