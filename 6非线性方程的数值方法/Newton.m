clear; clc
x0=0.5;
jingdu=0.0001;
syms x;
f1=4*x^3+2*x-2
df1=diff(f1)
for i = 1:100
    f = subs(f1,x0);
    df = subs(df1,x0);
    x = x0 - f/df;
    if(abs(x-x0) < jingdu)
        break;
    end
    x0 = x;% 更新迭代结果
    disp(x0);
end
disp('迭代次数：');
i


