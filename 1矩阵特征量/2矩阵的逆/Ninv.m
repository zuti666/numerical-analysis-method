%1求矩阵的逆及解线性方程组示例
A=[1 2 3;
   1 4 9;
   1 8 27;]; %系数矩阵
b=[12 16 8]'; %值向量
Aa=inv(A);   %求系数矩阵A的逆
A*Aa         %验证逆矩阵定义 A*A^-1 = A^-1*A =I
Aa*A
x=Aa*b  ;    %求线性方程组的解
A*x          %验证x的正确性