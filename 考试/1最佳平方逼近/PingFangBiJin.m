clc;clear;
syms x
f=abs(x); %������������ϵĺ���
q=[1;
    x/sqrt(2/3);
    (5*x^3-3*x)/sqrt(8/7);
    (63*x^5-70*x^3+15*x)/sqrt(128/11)]; %������
n=length(q);
p=x*ones(n,1);
r=x*ones(n,n);
a=-1;b=1; %��������
for i=1:n
    p(i)=int(q(i)*f,a,b);
end
disp('�ұ���');
vpa(p,7)
for i=1:n
    for j=1:n
        r(i,j)=int(q(i)*q(j),a,b);
    end
end
disp('���󷽳�');
vpa(r,7)
disp('���');

a=r\p;
vpa(a,7)


