x=[0.1,0.2,0.3,0.4];
y=[-0.62049958,-0.28398668,0.00660095,0.24842440];
m=length(x); %长度为0到n, 即为n+1
n=m-1;
h=zeros(1,m);
u=zeros(1,n-1);
lamd=zeros(1,n-1);
for i1=1:n     %计算得hk,k=0..n,即1..n+1,m个
    h(i1)=x(i1+1)-x(i1);
end

for i1=2:n       %计算得uk,k=1..n-1,
    u(i1)=h(i1)/(h(i1-1)+h(i1));
end
zong=zeros(1,n-1);
zong(1,1:n-1)=u(1,2:n);

for i1=2:n      %计算得lamdk,k=1..n-1
     lamd(i1)=6/(h(i1-1)+h(i1))*((y(i1+1)-y(i1))/h(i1)-(y(i1)-y(i1-1)/h(i1-1)));
end
zonglamd=zeros(1,n-1);
zonglamd(1,1:n-1)=lamd(1,2:n);

