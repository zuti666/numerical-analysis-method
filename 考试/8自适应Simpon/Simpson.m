clc;
clear;
a=0.1;b=2; %改
syms x;
f(x)=sin(1/x); % 改
TOL=1e-3;%绝对误差
d4f(x)=diff(f(x),4) %f(x)的4阶导数
d5f(x)=diff(f(x),5) %f(x)的五阶导数
fplot(d4f(x),[a,b],'r-');
hold on
fplot(d5f(x),[a,b],'b-');
M4=abs(d4f(a));%f(x)4阶导数的最大值
for i=a:0.01:b   %区间改变
    if abs(d4f(i))>M4
        M4=abs(vpa(d4f(i),5));
    end
end
disp('M4');
disp(vpa(M4,4));

h=(TOL*180/(M4*(b-a)))^(1/4);%理论步长
m=fix((b-a)/(2*h))+1;%在TOL误差下的次数；
disp('理论步长');
disp(vpa(h,6));
disp('次数');
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
e=vpa(abs(shiji-S),8)%近似计算的实际误差



