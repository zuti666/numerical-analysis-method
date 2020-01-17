%反幂法

A=[1 2;
    1.000011 2;];  %矩阵改
v0=[0 1]';%初始值改

n=length(v0);
tol=1e-6;
m0=0;
m1=1;
k=0;
eps=1;
while eps>tol
    k=k+1;         %输出迭代次数
  disp('迭代次数');
  disp(k);   
  
  m1=m0;
 u1=A\v0;       %计算u1
 if  k==1
     disp('u1');
     disp(vpa(u1,8));
 end
m0=max(abs(u1));   %计算m 绝对值最大的特征值
 for i=1:n
    if (abs(u1(i))-m0) ==0
     m0=u1(i);
    end
 end
 minte=(1/m0);
 disp('最小特征值');
 disp(1/m0);
 
 v1=u1/m0; 
 eps=norm(v1-v0,inf);
 v0=v1;
 

 disp('特征向量');  %输出特征向量
 disp(vpa((v1),8));
end
