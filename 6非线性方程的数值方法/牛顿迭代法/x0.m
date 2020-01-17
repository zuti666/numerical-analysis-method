
clc ; clear 
%绘制原图像找到初始点
syms x
y=sin(x)-6*x^2+exp(-x)
fplot(y,[0,1],'b-');
hold on
plot(xlim,[0,0],'r:');   %绘制零刻度线
hold off
%%找到L
a=0;b=1;  %范围 改
dy=diff(y)
g=x-(y/dy);
dg=diff(g);
figure
fplot(g,[a,b],'b-'); % 绘制g(x)函数图像 
hold on
fplot(dg,[a,b],'y-');%绘制gd(x)函数图像 
x=0.1:0.001:1;
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));