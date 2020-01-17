function y = romberg(fun,a,b,tol,varargin)
% romberg.m为用龙贝格求积分
% y为输出的积分计算结果；
% fun为积函数的句柄
% a与b分别为积分的上下限
% tol为误差的控制参数，其默认值为1e-4
% varargin表示fun函数的不定数目的参数
if nargin<3; 
    error('fun,a,b must be defined'); % 输入参数少于3个提示出错
elseif nargin==3;
    tol = 1e-4; % 设置tol的缺省值
end
fab = feval(fun,[a,b],varargin{:});
r(1,1) = [b-a]/2*sum(fab);
k = 0; % 初始化脚标参数
D = inf; % 设置误差的初值
while D>tol;
    k = k+1; % 更新脚标参数
    x = a+(b-a)/2^k*[2*[1:2^(k-1)]-1]; % 计算采样点坐标
    fx = feval(fun,x,varargin{:}); % 计算函数值
    r(k+1,1)=0.5*[r(k,1)+(b-a)/2^(k-1)*sum(fx)]; % 计算第一列中的下一行元素值
    for m=2:k+1;
        r(k+1,m)=[4^(m-1)*r(k+1,m-1)-r(k,m-1)]/[4^(m-1)-1]; % 计算下一行元素值
    end
    D = abs(r(k+1,k+1)-r(k,k)); % 更新当前误差
end
y=r(k+1,k+1); % 返回积分值