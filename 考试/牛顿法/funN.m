function [y,dy,d2y] = funN(x)
%  函数返回函数值，一阶导数，二阶导数
y=exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3;            %需要改动
ff=str2sym('exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3'); %定义符号函数  ，需要改动
if nargout>1  %当返回值大于1个时
    dy=diff(ff);            %求一阶导数    
    dy=subs(dy,x);        %赋值
end
if nargout==3
    d2y=diff(ff,2); %求二阶导数
    d2y=subs(d2y,x);%赋值
end
