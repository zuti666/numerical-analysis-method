clear all;clc;
x0=[0.1;0.1;-0.1;];%初始值x0
syms x1 x2 x3 t
f1=(3*x1-cos(x2*x3)-1/2);
f2=4*x1^2-625*x2^2+2*x2-1;
f3=exp(-x1*x2)+20*x3+10*pi-3/3; %方程组
y0=myfun(x0);   %初值f(x0)
g1=f1+(t-1)*y0(1);
g2=f2+(t-1)*y0(2);
g3=f3+(t-1)*y0(3);
g=[g1,g2,g3]; %g(t,x(t))
x=[x1,x2,x3];
J=jacobian(g,x) %Jacobi矩阵 J(x(t))
xw=vpa(-J^-1*y0,4) %微分方程组