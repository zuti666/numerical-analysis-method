x0=[0 1];
%����jacobian����
syms x y
f1=x^2-2*x-y+0.5;
f2=x^2+4*y-4;
f=[f1;f2];
J=jacobian(f,[x,y]); %����Jacobian����ķ��Ž�
%����Newton��������
[r,n,data]=NewTond(x0);
disp('NewTon����ý�Ϊ');disp(vpa(r,8));
disp('��������');disp(n);
disp('ÿһ����ý�');disp(vpa(data,8));

