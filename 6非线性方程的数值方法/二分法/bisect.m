%函数为二分法求非线性方程组的解
function [k,c,err,yc]=bisect(fun,a,b,delta)
%f为要求解的函数
%a与b分别为有根区间的左右界
%delta为允许的误差界
%k为计算次数
%c为所求近似解
%err为c的误差估计
%yc为函数f在c上的值
if nargin<4  %nargin为函数输入的参数数目
             %当参数小于四，将精度设为10的负六次方，即默认精度为10的负六次方
    delta=le-6;
end
                   %计算区间端点对应的函数值
ya=feval(fun,a); %feval 用函数的名称或其句柄以及输入参数 x1,...,xM 来计算函数的结果
yb=feval(fun,b);
if yb==0          % 当端点值为0时返回解
    c=b;
    return
end
     
if ya*yb>0        %当不满足根的存在定理时函数返回并提示错误信息
    disp('a,b不是有根区间');
    return ;
end
 
%由精度计算出计算最大次数 由|Pn-p|<(b-a)/2^n 得n>lg((b-a)/delta)/lg2,即n>lg(b-a)-lg(delta)/lg2
max1=1+round((log(b-a)-log(delta))/log(2))  ;         %round()四舍五入

for k=1:max1
    c=(a+b)/2;             %二分法计算
    yc=feval(fun,c); 
    if yc==0                  
        a=c;b=c;
        break;
    elseif yc*yb<0
        a=c; ya=yc;
    else
        b=c; yb=yc;
    end
    if (b-a)<delta          %满足精度要求，退出
        break;
    end
end
c=(a+b)/2;
err=abs(b-a); %err为误差
              %abs()计算绝对值
yc=feval('funbiset',c); %yc为c点函数值


