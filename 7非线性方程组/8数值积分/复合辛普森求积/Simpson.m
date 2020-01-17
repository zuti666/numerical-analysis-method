function s=Simpson(a,b,n)
% Simpson.m函数为用辛普森求积分
%a,b为积分区间
%n为划分的子区间个数
%如果n缺省  则默认划分100个区间
if nargin<3
n=100;
end
%子区间长度
h=(b-a)/(2*n);
%设初值
s1=0;
s2=0;
for k=1:n
   x=a+h*(2*k-1);
   disp('X');
   disp(x);
   disp('fun(X)');
   disp(fun(x));
   s1=s1+fun(x);
end
for k=1:(n-1)
  x=a+h*2*k;
   disp('X');
   disp(x);
   disp('fun(X)');
   disp(fun(x));
  s2=s2+fun(x); 
end
%结果相加
s=h*(fun(a)+fun(b)+4*s1+2*s2)/3;