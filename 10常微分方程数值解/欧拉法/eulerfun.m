function E=eulerfun(fun,x0,y0,xn,n)
% eulerfun.m函数为用Euler法求解微分方程
% fun为一阶微分方程的函数
% x0,y0为初始条件
% xn为取值范围的一个端点
% h为区间步长
% N为区间的个数
% x为Xn构成的向量
% y为Yn构成的向量
x=zeros(1,n+1);
y=zeros(1,n+1);
x(1)=x0;y(1)=y0;
h=(xn-x0)/n;
for k=1:n
    x(k+1)=x(k)+h;
    y(k+1)=y(k)+h*feval(fun,x(k),y(k));
end
T=[x',y']