clear ; clc;
p0=[0,0]'; %��ʼֵx  ��
tol=1e-3;% ���
eps=1;
syms x y z t
f=[sin(4*pi*x*y)-2*y-x;
    (4*pi-1)/(4*pi)*(exp(2*x)-exp(1))+4*exp(1)*y^2-2*exp(1)*x]; %�����Է����� ��
x=[x,y];
J=jacobian(f,x)  %Jacobi���� J((t))

fp0=myfun(p0)   %��ֵf(x0);
J2=subs(J,symvar(f),p0'); %����Jacobian�����ֵ
J3=double(J2)
H0 = J3^-1  %HΪJacobian����������
n=1;
disp(n);
p1=p0-H0*fp0 ; %����x1
disp('���ֵ');
disp(p1);
disp('���');
disp(norm((p1-p0),inf))
while(eps>=tol)
 n=n+1;
 fp1=myfun(p1);  %
 y0=fp1-fp0;  %y0
 dp0=p1-p0;  %
 H1=H0+ (dp0-H0*y0)*(dp0'*H0)/(dp0'*H0*y0);    %����Hk+1=Hk+
 p2=p1-H1*fp1;   %����Xk+1=Xk-Hk*f(xk);
 if n==2
     disp('H1');
     disp(H1);
 end
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
