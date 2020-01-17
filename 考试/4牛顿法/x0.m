

clc;clear;
%绘制原图像找到初始点
a=10.98;b=11.01;  %范围 改
syms x
y=3^(3*x+1)-7*5^(2*x); %改
y1=diff(y);
y2=diff(y,2);
figure
fplot(y,[a,b],'r-'); %改
hold on
plot(xlim,[0,0],'r:');   %绘制零刻度线
hold on
fplot(y1,[a,b],'y-');
hold on
fplot(y2,[a,b],'b-');
hold off
%
fps1=subs(y,'x',a);
f1ps1=subs(y1,'x',a);
fps2=subs(y,'x',b);
f1ps2=subs(y1,'x',a);
if (fps1/f1ps1)<(b-a)&&(fps2/f1ps2)<(b-a)
   disp('满足定理二');
    
end

%%找到L

dy=diff(y)
g=x-(y/dy);
dg=diff(g);
d2g=diff(g,2);
figure
fplot(g,[a,b],'r-'); % 绘制g(x)函数图像 
hold on
fplot(dg,[a,b],'y-');%绘制gd(x)函数图像
hold on
fplot(d2g,[a,b],'b-');%绘制gd(x)函数图像
x=a:0.001:b;    %改
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));

