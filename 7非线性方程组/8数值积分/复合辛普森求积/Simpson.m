function s=Simpson(a,b,n)
% Simpson.m����Ϊ������ɭ�����
%a,bΪ��������
%nΪ���ֵ����������
%���nȱʡ  ��Ĭ�ϻ���100������
if nargin<3
n=100;
end
%�����䳤��
h=(b-a)/(2*n);
%���ֵ
s1=0;
s2=0;
for k=1:n
   x=a+h*(2*k-1);
   disp('X');
   disp(x);
   disp('fun(X)');
   disp(fun(x));
   s1=s1+fun(x);
end
for k=1:(n-1)
  x=a+h*2*k;
   disp('X');
   disp(x);
   disp('fun(X)');
   disp(fun(x));
  s2=s2+fun(x); 
end
%������
s=h*(fun(a)+fun(b)+4*s1+2*s2)/3;