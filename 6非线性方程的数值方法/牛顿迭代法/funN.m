function [y,dy,d2y] = funN(x)
%  函数返回函数值，一阶导数，二阶导数
y=sin(x)-6*x^2+exp(-x);            %需要改动
ff=str2sym('sin(x)-6*x^2+exp(-x)'); %定义符号函数  ，需要改动
if nargout>1  %当返回值大于1个时
    dy=diff(ff);            %求一阶导数    
    dy=subs(dy,x);        %赋值
end
if nargout==3
    d2y=diff(ff,2); %求二阶导数
    d2y=subs(d2y,x);%赋值
end
