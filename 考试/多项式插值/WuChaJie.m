x1%���ݵ�
t=0.750;%��ʼֵ
n=length(x1);
sum=1;
syms x 
f=cos(x);
df1=diff(f)
df2=diff(f,2)
df3=diff(f,3)
df4=diff(f,4)
x11=x1(1)
x1n=x1(n)
x=x11:0.0001:x1n; %����(a,b)
max1=vpa(max(subs(df4,x)),6)
jiecheng=factorial(n)
for i=1:n
    w=(t-x1(i));
    sum=w*sum;
end
sum  %Wx(n+1)
rn=vpa(1/jiecheng*sum*max1,8)
