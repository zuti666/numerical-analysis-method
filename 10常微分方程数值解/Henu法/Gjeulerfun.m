function E=Gjeulerfun(fun,x0,y0,xn,n)
% Gjeulerfun.m����Ϊ�øĽ���Euler�����΢�ַ���
% funΪһ��΢�ַ��̵ĺ���
% x0,y0Ϊ��ʼ����
% xnΪȡֵ��Χ��һ���˵�
% hΪ���䲽��
% NΪ����ĸ���
% xΪXn���ɵ�����
% yΪYn���ɵ�����
x=zeros(1,n+1);
y=zeros(1,n+1);
x(1)=x0;y(1)=y0;
h=(xn-x0)/n;
for k=1:n
    x(k+1)=x(k)+h;
    z0=y(k)+h*feval(fun,x(k),y(k));
    y(k+1)=y(k)+h/2*(feval(fun,x(k),y(k))+feval(fun,x(k+1),z0));
end
T=[x',y']