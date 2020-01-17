function [r,n]= Groudfun (F,x0,h,eps)
% F_ReevesGroudfun.mΪ��д���ù����ݶ��㷨������Է�����Ľ�ĺ���
% FΪ�����Է�����
% x0Ϊ�����ĳ�ʼֵ
% h��ֵ΢��������
% epsΪ��ľ���
% rΪ��÷����Է������һ���
% nΪ��������
format long;
if nargin==3
    eps=1.0e-6;
end
m=length(x0);
x0 = transpose(x0);
fx0 = subs(F,findsym(F),x0);
p0 = zeros(m,m);
for i=1:m
    x1 = x0;
    x1(i) = x1(i)*(1+h);
    p0(:,i) = -(subs(F,findsym(F),x1)-fx0)/h;
end
n=1;
tol=1;
while tol>eps
    fx = subs(F,findsym(F),x0);
    J = zeros(m,m);
    for i=1:m
        x1 = x0;
        x1(i) = x1(i)+h;
        J(:,i) = (subs(F,findsym(F),x1)-fx)/h;
    end
    lamda = fx/sum(diag(transpose(J)*J));
    r=x0+p0*lamda;    
    fr = subs(F,findsym(F),r);
    g = zeros(m,m);
    for i=1:m
        x1 = r;
        x1(i) = x1(i)+h;
        Jt(:,i) = (subs(F,findsym(F),x1)-fr)/h;
    end    
    abs1 = transpose(g)*g;
    abs2 = transpose(J)*J;
    v = abs1/abs2;
    if (abs(det(v)) < 1)
        p1 = -g+p0*v;
    else
        p1 = -g;
    end
    tol=norm(r-x0);
    p0 = p1;
    x0 = r;
    n=n+1;
    if(n>100000)              
        disp('��������̫�࣬���ܲ�������');
        return;
    end
end
format short;
