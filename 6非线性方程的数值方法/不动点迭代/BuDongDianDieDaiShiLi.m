%���������������ʾ��
%����sin(x)-x^2
%���ƺ���ͼ��
fplot(@(x)(sin(x)-x^2),[-4,4]);
grid on;
hold on;

%���ò�������������
chushizhi=0.5;%��ʼֵ
tol=1e-6;%���
max1= 20;%����������
[p0,k,err,p]=fipt('funfix',chushizhi,tol,max1);
yp=feval('funfix',p);
plot(p,yp,'r*');
disp('��������ý��ƽ�');disp(p);
disp('���');disp(err);
disp('��������');disp(k);


