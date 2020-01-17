clear all; clc;
p0=[0,0,0]'; %��ʼֵx
tol=1e-3;% ���
eps=1;
syms x y z t
f=[6*x-2*cos(y*z)-1;
   9*y+(x^2+sin(z)+1.06)^(1/2)+0.9;
   60*z+3*exp(-x*y)+10*pi-3;]; %�����Է�����
x=[x,y,z];
J=jacobian(f,x)  %Jacobi���� J(x(t))

fp0=myfun(p0)   %��ֵf(x0);
J2=subs(J,symvar(f),p0'); %����Jacobian�����ֵ
J3=double(J2)
H0 = J3^-1  %HΪJacobian����������
n=1;
disp(n);
p1=p0-H0*fp0 ; %����x1
disp(p1);
while(eps>=tol)
 n=n+1;
 fp1=myfun(p1);  %
 y0=fp1-fp0;  %y0
 dp0=p1-p0;  %
 H1=H0+ (dp0-H0*y0)*(dp0'*H0)/(dp0'*H0*y0);    %����Hk+1=Hk+
 p2=p1-H1*fp1;   %����Xk+1=Xk-Hk*f(xk);
 disp(n);
 disp('���ֵ');
 disp(vpa(p2,8));
 eps=norm((p2-p1),inf);  %�������||x2-x1||inf
 disp('���');
 disp(vpa(eps,8));
 p0=p1 ;%�����ٴ�ѭ��
 p1=p2 ;
 fp0=fp1;
 H0=H1;
 end
