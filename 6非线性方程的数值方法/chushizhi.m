%用二分法在区间[a,b]内选取初始值
function x0=chushizhi(f,a,b)
syms x;flase=1;
f(x)=f;
d(x)=diff(f(x));%f(x)的导数为d(x)
d2(x)=diff(d(x));%f(x)的二阶导数
 while(flase==1)%二分法进行循环
    s=d(a);%用来储存d(x)的离散形式乘积判断d(x)是否变号
    p=d2(a);
    for i=a:0.01:b   %把连续的函数离散化
        s=s*d(i);
        if s<=0
            flase=1;
        end
        p=p*d2(i);
        if p<=0
             flase=1;
             return;
        end
    end       
if f(a)*f(b)==0%所输入的a或b即为函数的零点
    if f(a)==0
        x0=a;
        return;
    else
        x0=b;
        return;
    end
else
        c=(a+b)/2;
        if f(a)*f(c)>0
            a=c;
        elseif f(a)*f(c)==0
            x0=c;
            return;
        else
            b=c;
        end
        if abs(f(a)/d(a))<(b-a)&&abs(f(b)/d(b))<(b-a)%判断得到的新区间是否满足判定条件 
            x0=(a+b)/2;
            flase=0;
        end
    end
end
end