function E=eulerfun(fun,x0,y0,xn,n)
% eulerfun.m����Ϊ��Euler�����΢�ַ���
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
    y(k+1)=y(k)+h*feval(fun,x(k),y(k));
end
T=[x',y']