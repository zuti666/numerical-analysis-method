clc
x1=0:0.5:3;%数据点
y1=[0 0.4794 0.8415 0.9975 0.9093 0.5985 0.1411];

%%
%多项式拟合
[p,S]=polyfit(x1,y1,3);    %对x,y进行3阶多项式拟合，
                      %p=Polyfit(x,y,n)返回阶数为n的多项式p(x)的系数，该阶数是y中数据的最佳拟合（在最小二乘方式中）。p中的系数按降幂排列，p的长度为n+1
[y3,delta]= polyval(p,x1,S);     %使用多项式计算理论值
                      %polyval(p,x)多项式计算多项式p在x的每个点处的值
yp=polyval(p,1.5 ); %使用插值后的多项式计算估计值
vpa(yp,9)
s = sprintf('y =  (%.4f) x^3+(%.4f) x^2+(%.4f) x + (%.4f)',p(1),p(2),p(3),p(4));
p=vpa(poly2sym(p),13);%显示3阶多项式
                       %p=poly2sym(p1)创建符号多项式，p1为多项式系数向量
                       %vpa可变精度算法vpa(x,d)计算输入符号输入的每个元素x至少d位有效数字
disp(p);
figure;               %画图显示
plot(x1,y1,'bo');     %显示源数据
hold on
plot(x1,y3,'r-');     %显示多项式拟合
plot(x1,y3+2*delta,'m--',x1,y3-2*delta,'m--')
grid on                %显示坐标区网格线
text(5,168,s);       %显示拟合的函数
legend('原始数据','3阶多项式拟合','95%预测区间');
xlabel('x');
ylabel('y');
hold off
%%
%计算协方差矩阵
R=S.R;
df=S.df;
normr=S.normr;
Rinv=inv(R);
(Rinv*Rinv')*normr^2/df

