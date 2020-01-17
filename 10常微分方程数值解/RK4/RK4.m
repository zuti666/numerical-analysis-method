function R=RK4(fun,a,b,ya,n)
% RK4.m����Ϊ��Runge-Kutta�����΢�ַ���
% y'=fun(x,y)
% a,bΪ���Ҷ˵�
% nΪ��������
% yaΪ��ʼֵ
h=(b-a)/n;
T=zeros(1,n+1);
Y=zeros(1,n+1);
T=a:h:b;
Y(1)=ya;
for j=1:n
    k1=h*feval(fun,T(j),Y(j));
    k2=h*feval(fun,T(j)+h/2,Y(j)+k1/2);
    k3=h*feval(fun,T(j)+h/2,Y(j)+k2/2);
    k4=h*feval(fun,T(j)+h,Y(j)+k3);
    Y(j+1)=Y(j)+(k1+2*k2+2*k3+k4)/6;
end
R=[T',Y']