clc;clear;
A=[1 2;
   1.00001 2;]; %原

b=[3.00001,3.00003]';

x0=[1,1]';%准确解
A0=[1 2;
    1.000011 2]; %摄动方程组
x=A0\b; %解
disp('摄动方程组的解');
disp(vpa(x,8));
wucha=norm((x-x0),inf);%和准确解之间的误差
disp('实际误差');
disp(vpa(wucha,8));
disp('相对误差');
disp(vpa(wucha/norm(x0,inf),8));
disp('摄动方程组系数矩阵谱条件数')
cond(A0)%系数矩阵A的谱条件数
%detA=A-A0;%系数矩阵的变化量
%norm(detA,inf) %系数矩阵的变化量 无穷的范数
%norm(A,inf) %系数矩阵的 无穷的范数
%detx=(cond(A,inf)*(norm(detA,inf)/norm(A,inf)))/(1-cond(A,inf)*(norm(detA,inf)/norm(A,inf)))%解的相对误差估计