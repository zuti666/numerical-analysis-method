
clc ; clear 
%����ԭͼ���ҵ���ʼ��
syms x
y=exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3; %��
fplot(y,[-1,0],'b-'); %��
hold on
plot(xlim,[0,0],'r:');   %������̶���
hold off
%%�ҵ�L
a=-1;b=0;  %��Χ ��
dy=diff(y)
g=x-(y/dy);
dg=diff(g);
figure
fplot(g,[a,b],'b-'); % ����g(x)����ͼ�� 
hold on
fplot(dg,[a,b],'y-');%����gd(x)����ͼ�� 
x=-1:0.001:0;    %��
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));