%���ݷ�
clc
A=[-2 -1 -1;
   -1 -2.2 -1;
   -1 -1 2.1;];
v0=[0 0 1]';
n=length(v0);
tol=1e-6;
m0=0;
m1=1;
k=0;
eps=1;
while eps>tol
    k=k+1;         %�����������
  disp('��������');
  disp(k);   
  
  m1=m0;
 u1=A*v0;       %����u1
m0=max(abs(u1));   %����m ����ֵ��������ֵ
 for i=1:n
    if (abs(u1(i))-m0) ==0
     m0=u1(i);
    end
 end
 disp('������ֵ');
 disp(m0);
 
 v1=u1/m0; 
 eps=norm(v1-v0,inf);
 v0=v1;
 
 
 disp('��������');  %�����������
 disp(vpa((v1),8));
end
