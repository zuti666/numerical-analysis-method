

clc;clear;
%����ԭͼ���ҵ���ʼ��
a=10.98;b=11.01;  %��Χ ��
syms x
y=3^(3*x+1)-7*5^(2*x); %��
y1=diff(y);
y2=diff(y,2);
figure
fplot(y,[a,b],'r-'); %��
hold on
plot(xlim,[0,0],'r:');   %������̶���
hold on
fplot(y1,[a,b],'y-');
hold on
fplot(y2,[a,b],'b-');
hold off
%
fps1=subs(y,'x',a);
f1ps1=subs(y1,'x',a);
fps2=subs(y,'x',b);
f1ps2=subs(y1,'x',a);
if (fps1/f1ps1)<(b-a)&&(fps2/f1ps2)<(b-a)
   disp('���㶨���');
    
end

%%�ҵ�L

dy=diff(y)
g=x-(y/dy);
dg=diff(g);
d2g=diff(g,2);
figure
fplot(g,[a,b],'r-'); % ����g(x)����ͼ�� 
hold on
fplot(dg,[a,b],'y-');%����gd(x)����ͼ��
hold on
fplot(d2g,[a,b],'b-');%����gd(x)����ͼ��
x=a:0.001:b;    %��
dg1=subs(dg);
L1=max(dg1);
disp(vpa(L1,4));

