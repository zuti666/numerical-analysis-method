clc; 
%ţ�ٷ��ⷽ�̵���ʾ��
%x0.m����ԭͼ���ҵ���ʼ��
%��funN.m��������
%���ĳ�ʼ��;���
%����main�������
%K.m��������۵�������K
chushizhi=11;% ��ʼֵ ��
Tol=1e-2; % ����  ��
[xr,err,i]=Newton('funN',chushizhi,Tol);
yxr=feval('funN',xr);
plot(xr,yxr,'r*');
disp('ţ�ٷ���÷��̽��ƽ�Ϊ');disp(vpa(xr,8));
disp('���');disp(vpa(err,4));
disp('ʵ�ʵ�������');disp(i);



