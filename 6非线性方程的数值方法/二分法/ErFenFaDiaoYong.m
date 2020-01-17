%调用二分法求解非线性方程组示例
%f(x)=x^3*cos(x)+2*x^2-2*sin(x）在区间[1,3]之间的根
%根据方程绘制图像
fplot(@(x)x.^3*cos(x)+2*x.^2-2*sin(x),[1,3]);
grid on;
hold on;
%调用编写的二分法求解
[k,c,err,yc]=bisect('funbiset',1,3,1e-6);
%在图中显示解
plot(c,yc,'r*');
disp('计算次数');disp(k);
disp('解');disp(vpa(c,8));
disp('误差');disp(vpa(err,8));