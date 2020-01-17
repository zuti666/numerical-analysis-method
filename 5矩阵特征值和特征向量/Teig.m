%特征值及特征向量eig(A) 最大特征值eigs(A,1)
%Av=rv r为方阵A的特征值 v为方阵A相对于特征值r的特征向量
A=vander(1:3);  %A是3阶范德蒙德行列式
[V,D]=eig(A)    %V第i列为对应的特征向量
S=eigs(A,1)     %矩阵A最大的1个特征值