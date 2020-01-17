function y = serttow(fun,a,b,tol,varargin)
% serttow.m为用逐次二分法求积分
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
y0 = sum(fun([a,b],varargin{:}),2)/2; % 初始化过程量的数值
y = y0; % 初始化积分值
Er = inf; % 初始误差
h = b-a; % 初始步长
n=1; % 初始区间数
while Er>tol;
    y0 = y; % 更新y0的数值
    h = h/2; % 二分区间长度
    n=n*2; % 双倍区间数目
    x = a+(2*[1:n/2]-1)*h; % 计算采样点
    y = y0/2+h*sum(fun(x,varargin{:}),2); % 计算函数值同时更新积分值
    Er=max(abs(y-y0)); % 计算当前误差
end