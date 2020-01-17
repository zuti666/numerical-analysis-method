function [a,k]=newton666(f,x1,tol,m)
%f为方程f(x)=0中的f(x),
%a为近似解，k为迭代次数，
%x1为初始值，tol为误差容限，m为最大迭代次数
syms x;%定义符f;
f(x)=f;
t(x)=diff(f(x));%f(x)的导数为t(x)
g(x)=x-f(x)/t(x);%g(x)为迭代公式号变量x
p=[];%定义一个数组存放各阶迭代值
p(1)=x1;
for i=1:m
    x=p(i);
    p(i+1)=g(x);
    if abs(p(i+1)-p(i))<tol%判断精度是否达到要求
        a=p(i+1);
        k=i+1;
        m=i;
        break;
    end
end
format long g%输出a的十五位浮点数
if abs(p(m+1)-p(m))>=tol%迭代n次后达不到精度要求
    a=x1;k=0;
    disp('Method failed');
end
end
    
    