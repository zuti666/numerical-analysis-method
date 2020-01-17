clc;clear;
syms x
f=abs(x); %被积函数被拟合的函数
q=[1;
    x/sqrt(2/3);
    (5*x^3-3*x)/sqrt(8/7);
    (63*x^5-70*x^3+15*x)/sqrt(128/11)]; %基函数
n=length(q);
p=x*ones(n,1);
r=x*ones(n,n);
a=-1;b=1; %积分区间
for i=1:n
    p(i)=int(q(i)*f,a,b);
end
disp('右边项');
vpa(p,7)
for i=1:n
    for j=1:n
        r(i,j)=int(q(i)*q(j),a,b);
    end
end
disp('矩阵方程');
vpa(r,7)
disp('结果');

a=r\p;
vpa(a,7)


