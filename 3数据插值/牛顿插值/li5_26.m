%计算4阶牛顿方法
x=[-1 -0.5 0 0 0.5 1];
y=1./(1+10*x.^2);
n=Newton(x,y);
xx=[-1:0.02:1];
yy1=polyval(n,xx);
%计算原始函数的数据
yy=1./(1+10*xx.^2);
plot(xx,yy,'r-.',x,y,'p');
hold on;
%绘制插值图形
plot(xx,yy1,'m'); hold on;
%计算8阶牛顿方法
x1=[-1:0.25:1];
y1=1./(1+10*x1.^2);
n1=Newton(x1,y1);
yy2=polyval(n1,xx);
%绘制新的插值图形
plot(x1,y1,'kd');hold on;
plot(xx,yy2,'b'); hold on;
%计算10阶牛顿方法
x2=[-1:0.2:1];
y2=1./(1+10*x2.^2);
n2=Newton(x2,y2);
yy3=polyval(n2,xx);
plot(x1,y1,'gh'); hold on;
plot(xx,yy3); grid on;
hold on;               %效果如图5-15所示
legend('原始数据','4阶插值','8阶插值','10阶插值')
%进行插值误差分析
figure;
plot(xx,yy1-yy,'b');hold on;
plot(xx,yy2-yy,'m.');
plot(xx,yy3-yy,'g-.');
grid on;
legend('4阶插值误差','8阶插值误差','10阶插值误差')


