%用Newton法求解非线性方程组
function [x,n,data]=NewTond(x0,tol)
%输入x0为迭代初值
%tol为误差容县，如果缺省默认为10的负六次方
%data用来存放中间数据，便于计算收敛情况分析
if nargin==1
    tol=1e-6;
end
x1=x0-F(x0)/Jacobian1(x0);
n=1;
%迭代过程
while (norm(x1-x0) > tol )&&(n<500)
    x0=x1;
    x1=x0-F(x0)/Jacobian1(x0);
    n=n+1;
    %data 用来存放中间数据
    data(:,n)=x1;
end
x=x1;

