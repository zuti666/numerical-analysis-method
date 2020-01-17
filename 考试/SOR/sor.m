function [x,n,flag]=sor(A,b,x0,Tol,M,max1)
% sor函数为用松弛法求解线性方程组
% A为线性方程组的系数矩阵
% b为线性方程组的常数向量
% eps为精度要求，缺省值为1e-5
% M为超弛因子，缺省为1
% max1为最大迭代次数，缺省值为100
% x为方程组的解
% n为迭代次数
% flag为指标变量，flag='OK！'表示迭代收敛达到指标要求
% flag='fail!'表示迭代失败


k=length(A);n=0;
x=x0; y=zeros(k,1);
flag='OK!';
while 1
    disp(n);
    y=x;
    disp(y);
    for i=1:k
        z=b(i);
        for j=1:k
            if j~=i
                z=z-A(i,j)*x(j);
            end
        end
        if abs(A(i,i))<1e-10||n==max1
            flag='fail!';
            return;
        end
        z=z/A(i,i);
        x(i)=(1-M)*x(i)+M*z;
    end
    eps=norm(y-x,inf);
    disp(vpa(eps,6));
    if eps<Tol
        break;
    end
    n=n+1;
end
