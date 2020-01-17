clc; 
%牛顿法解方程调用示例
%x0.m绘制原图像找到初始点
%将funN.m函数更改
%更改初始点和精度
%调用main函数求解
%K.m计算得理论迭代次数K
chushizhi=-0.2;% 初始值
Tol=1e-3; % 精度
[xr,err,i]=Newton('funN',chushizhi,Tol);
yxr=feval('funN',xr);
plot(xr,yxr,'r*');
disp('牛顿法求得方程近似解为');disp(vpa(xr,8));
disp('误差');disp(vpa(err,4));
disp('实际迭代次数');disp(i);



