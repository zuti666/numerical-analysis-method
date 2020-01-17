clc;
clear;
a=0.1;b=2; %��
syms x;
f(x)=sin(1/x); % ��
TOL=1e-3;%�������
d4f(x)=diff(f(x),4) %f(x)��4�׵���
d5f(x)=diff(f(x),5) %f(x)����׵���
fplot(d4f(x),[a,b],'r-');
hold on
fplot(d5f(x),[a,b],'b-');
M4=abs(d4f(a));%f(x)4�׵��������ֵ
for i=a:0.01:b   %����ı�
    if abs(d4f(i))>M4
        M4=abs(vpa(d4f(i),5));
    end
end
disp('M4');
disp(vpa(M4,4));

h=(TOL*180/(M4*(b-a)))^(1/4);%���۲���
m=fix((b-a)/(2*h))+1;%��TOL����µĴ�����
disp('���۲���');
disp(vpa(h,6));
disp('����');
disp(m);
hm=(b-a)/(2*m);
S0=f(a)+f(b);
S1=0;S2=0;
for i=1:2*m-1
    t=a+i*hm;
    if mod(i,2)==0
        S2=S2+f(t);
    else
        S1=S1+f(t);
    end
end
S=vpa(hm*(S0+4*S1+2*S2)/3,8)
shiji=int(f(x),a,b)
e=vpa(abs(shiji-S),8)%���Ƽ����ʵ�����



