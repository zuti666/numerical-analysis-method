%���ݷ�

A=[1 2;
    1.000011 2;];  %�����
v0=[0 1]';%��ʼֵ��

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
 u1=A\v0;       %����u1
 if  k==1
     disp('u1');
     disp(vpa(u1,8));
 end
m0=max(abs(u1));   %����m ����ֵ��������ֵ
 for i=1:n
    if (abs(u1(i))-m0) ==0
     m0=u1(i);
    end
 end
 minte=(1/m0);
 disp('��С����ֵ');
 disp(1/m0);
 
 v1=u1/m0; 
 eps=norm(v1-v0,inf);
 v0=v1;
 

 disp('��������');  %�����������
 disp(vpa((v1),8));
end
