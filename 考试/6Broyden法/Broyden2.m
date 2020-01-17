clear ; clc;
p0=[0,0]'; %初始值x  改
tol=1e-3;% 误差
eps=1;
syms x y z t
f=[sin(4*pi*x*y)-2*y-x;
    (4*pi-1)/(4*pi)*(exp(2*x)-exp(1))+4*exp(1)*y^2-2*exp(1)*x]; %非线性方程组 改
x=[x,y];
J=jacobian(f,x)  %Jacobi矩阵 J((t))

fp0=myfun(p0)   %初值f(x0);
J2=subs(J,symvar(f),p0'); %计算Jacobian矩阵的值
J3=double(J2)
H0 = J3^-1  %H为Jacobian矩阵的逆矩阵
n=1;
disp(n);
p1=p0-H0*fp0 ; %计算x1
disp('结果值');
disp(p1);
disp('误差');
disp(norm((p1-p0),inf))
while(eps>=tol)
 n=n+1;
 fp1=myfun(p1);  %
 y0=fp1-fp0;  %y0
 dp0=p1-p0;  %
 H1=H0+ (dp0-H0*y0)*(dp0'*H0)/(dp0'*H0*y0);    %计算Hk+1=Hk+
 p2=p1-H1*fp1;   %计算Xk+1=Xk-Hk*f(xk);
 if n==2
     disp('H1');
     disp(H1);
 end
 disp(n);
 disp('结果值');
 disp(vpa(p2,8));
 eps=norm((p2-p1),inf);  %计算误差||x2-x1||inf
 disp('误差');
 disp(vpa(eps,8));
 p0=p1 ;%进行再次循环
 p1=p2 ;
 fp0=fp1;
 H0=H1;
 end
