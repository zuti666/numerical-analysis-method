function [r,n]= Groudfun (F,x0,h,eps)
% F_ReevesGroudfun.m为编写利用共轭梯度算法求非线性方程组的解的函数
% F为非线性方程组
% x0为给定的初始值
% h数值微分增量步
% eps为解的精度
% r为求得非线性方程组的一组解
% n为迭代步数
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
        disp('迭代步数太多，可能不收敛！');
        return;
    end
end
format short;
