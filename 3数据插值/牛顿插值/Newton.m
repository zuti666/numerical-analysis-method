function [n,DD]=Newton(x,y)
% Newton函数用于实现牛顿插值
% 输入参数:  x=[x0 x1 ... xN]
%         y=[y0 y1 ... yN]
% 输出参数  n=newton系数
N=length(x)-1;
DD=zeros(N+1,N+1);
DD(1:N+1,1)=y';
for k=2:N+1
    for m=1:N+2-k
        DD(m,k)=(DD(m+1,k-1)-DD(m,k-1))/(x(m+k-1)-x(m));
    end
end
a=DD(1,:);
n=a(N+1);
for k=N:-1:1
    n=[n a(k)]-[0 n*x(k)];
end