syms x
y=1/(x+4);  %被积函数
dy=int(y)  %原函数表达式
disp(vpa(int(y,0,2),6));  %原函数数值