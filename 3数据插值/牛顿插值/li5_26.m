%����4��ţ�ٷ���
x=[-1 -0.5 0 0 0.5 1];
y=1./(1+10*x.^2);
n=Newton(x,y);
xx=[-1:0.02:1];
yy1=polyval(n,xx);
%����ԭʼ����������
yy=1./(1+10*xx.^2);
plot(xx,yy,'r-.',x,y,'p');
hold on;
%���Ʋ�ֵͼ��
plot(xx,yy1,'m'); hold on;
%����8��ţ�ٷ���
x1=[-1:0.25:1];
y1=1./(1+10*x1.^2);
n1=Newton(x1,y1);
yy2=polyval(n1,xx);
%�����µĲ�ֵͼ��
plot(x1,y1,'kd');hold on;
plot(xx,yy2,'b'); hold on;
%����10��ţ�ٷ���
x2=[-1:0.2:1];
y2=1./(1+10*x2.^2);
n2=Newton(x2,y2);
yy3=polyval(n2,xx);
plot(x1,y1,'gh'); hold on;
plot(xx,yy3); grid on;
hold on;               %Ч����ͼ5-15��ʾ
legend('ԭʼ����','4�ײ�ֵ','8�ײ�ֵ','10�ײ�ֵ')
%���в�ֵ������
figure;
plot(xx,yy1-yy,'b');hold on;
plot(xx,yy2-yy,'m.');
plot(xx,yy3-yy,'g-.');
grid on;
legend('4�ײ�ֵ���','8�ײ�ֵ���','10�ײ�ֵ���')


