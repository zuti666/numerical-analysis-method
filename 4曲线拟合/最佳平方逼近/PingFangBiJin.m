clc
syms x
f=sin(x); %��������
q=[1;
    x/sqrt(2/3);
    (5*x^3-3*x)/sqrt(8/7);
    (63*x^5-70*x^3+15*x)/sqrt(128/11);]; %������
n=length(q);
p=x*ones(n,1);
r=x*ones(n,n);
a=-1;b=1; %��������
for i=1:n
    p(i)=int(q(i)*f,a,b);
end
vpa(p,6)
for i=1:n
    for j=1:n
        r(i,j)=int(q(i)*q(j),a,b);
    end
end
vpa(r,6)

a=r\p;
vpa(a,6)


