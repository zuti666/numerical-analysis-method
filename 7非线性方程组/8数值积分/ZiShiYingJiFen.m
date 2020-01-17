%自适应积分
%quad()函数 integral()函数
clc;clear all;
tol=0.0000001;%默认精度为十的负六次方
a=0.1;%积分下限
b=2;%积分上限
fun1=@(x) sin(1./x);%被积函数
fun2=@(x) cos(1./x);%被积函数

%以自适应 Simpson 积分法计算数值积分
Q1=quad(fun1,a,b) %调用quad函数进行积分
Q2=quad(fun2,a,b) %调用quad函数进行积分

P1=integral(fun1,a,b)  %调用integral函数进行积分
P2=integral(fun2,a,b)  %调用integral函数进行积分
%绘图
x1=0.1:0.001:2; %x的范围
y1=sin(1./x1); %函数sin(1/x)
y2=cos(1./x1); %函数cos(1/x)
plot(x1,y1,'-r',x1,y2,'-b')