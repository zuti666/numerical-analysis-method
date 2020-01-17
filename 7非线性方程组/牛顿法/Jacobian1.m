function J1=Jacobian1(x0)
%函数计算jacobian矩阵的值
J1 =[ 2*x0(1) - 2, -1   %Jacobian矩阵的数值解
     2*x0(1),  8*x0(2)];





