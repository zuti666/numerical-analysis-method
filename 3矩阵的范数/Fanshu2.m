clc;clear all;
syms k
p1=str2sym ('4/((k)+1)');
p2=str2sym ('2/(k)^2 ');
p3=str2sym ('(k)^2*exp(-(k)) ');
x=[p1;p2;p3];
n1=norm(x,inf); %计算矩阵的无穷范数
vpa(n1,8)
n2=norm(x,2);   %计算矩阵的2范数
vpa(n2,8)

