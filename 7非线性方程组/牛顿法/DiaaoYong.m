x0=[0 1];
%计算jacobian矩阵
syms x y
f1=x^2-2*x-y+0.5;
f2=x^2+4*y-4;
f=[f1;f2];
J=jacobian(f,[x,y]); %计算Jacobian矩阵的符号解
%调用Newton函数计算
[r,n,data]=NewTond(x0);
disp('NewTon法求得解为');disp(vpa(r,8));
disp('迭代次数');disp(n);
disp('每一步求得解');disp(vpa(data,8));

