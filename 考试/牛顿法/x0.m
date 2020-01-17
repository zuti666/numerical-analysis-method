
clc ; clear 
%绘制原图像找到初始点
syms x
y=exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3; %改
fplot(y,[-1,0],'b-'); %改
hold on
plot(xlim,[0,0],'r:');   %绘制零刻度线
hold off
%%找到L
a=-1;b=0;  %范围 改
dy=diff(y)
g=x-(y/dy);
dg=diff(g);
figure
fplot(g,[a,b],'b-'); % 绘制g(x)函数图像 
hold on
fplot(dg,[a,b],'y-');%绘制gd(x)函数图像 
x=-1:0.001:0;    %改
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));