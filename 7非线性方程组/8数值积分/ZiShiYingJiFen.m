%����Ӧ����
%quad()���� integral()����
clc;clear all;
tol=0.0000001;%Ĭ�Ͼ���Ϊʮ�ĸ����η�
a=0.1;%��������
b=2;%��������
fun1=@(x) sin(1./x);%��������
fun2=@(x) cos(1./x);%��������

%������Ӧ Simpson ���ַ�������ֵ����
Q1=quad(fun1,a,b) %����quad�������л���
Q2=quad(fun2,a,b) %����quad�������л���

P1=integral(fun1,a,b)  %����integral�������л���
P2=integral(fun2,a,b)  %����integral�������л���
%��ͼ
x1=0.1:0.001:2; %x�ķ�Χ
y1=sin(1./x1); %����sin(1/x)
y2=cos(1./x1); %����cos(1/x)
plot(x1,y1,'-r',x1,y2,'-b')