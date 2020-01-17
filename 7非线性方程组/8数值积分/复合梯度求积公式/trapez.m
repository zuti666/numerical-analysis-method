function y = trapez(fun,a,b,n,varargin)
% trapez.m函数为用梯形法求解积分
% y为输出的积分计算结果；
% fun为积函数的句柄
% a与b分别为积分的上下限
% n为等间距分割区间的数目，默认值为1000
% varargin表示fun函数的不定数目的参数
if nargin<3; 
    error('fun,a,b must be defined'); % 输入参数少于3个提示出错
elseif nargin==3;
    n = 1000; % 设置n的缺省值
end
h = [b-a]/n; % 计算步长
x = a+h*[0:n]; % 计算采样点
if isempty(varargin);
    fx = feval(fun,x); % 计算函数值
else
    fx = feval(fun,x,varargin{:}); % 计算函数值
end
y = h*[(fx(1)+fx(end))/2+sum(fx(2:end-1))]; % 按公式算积分