
clc ; clear 
%����ԭͼ���ҵ���ʼ��
syms x
y=sin(x)-6*x^2+exp(-x)
fplot(y,[0,1],'b-');
hold on
plot(xlim,[0,0],'r:');   %������̶���
hold off
%%�ҵ�L
a=0;b=1;  %��Χ ��
dy=diff(y)
g=x-(y/dy);
dg=diff(g);
figure
fplot(g,[a,b],'b-'); % ����g(x)����ͼ�� 
hold on
fplot(dg,[a,b],'y-');%����gd(x)����ͼ�� 
x=0.1:0.001:1;
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));