%不动点迭代求解调用示例
%函数sin(x)-x^2
%绘制函数图像
fplot(@(x)(sin(x)-x^2),[-4,4]);
grid on;
hold on;

%调用不动点迭代法求解
chushizhi=0.5;%初始值
tol=1e-6;%误差
max1= 20;%最大迭代次数
[p0,k,err,p]=fipt('funfix',chushizhi,tol,max1);
yp=feval('funfix',p);
plot(p,yp,'r*');
disp('迭代法求得近似解');disp(p);
disp('误差');disp(err);
disp('迭代次数');disp(k);


