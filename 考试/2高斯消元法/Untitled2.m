clc;clear;
A=[1 2;
   1.00001 2;]; %ԭ

b=[3.00001,3.00003]';

x0=[1,1]';%׼ȷ��
A0=[1 2;
    1.000011 2]; %�㶯������
x=A0\b; %��
disp('�㶯������Ľ�');
disp(vpa(x,8));
wucha=norm((x-x0),inf);%��׼ȷ��֮������
disp('ʵ�����');
disp(vpa(wucha,8));
disp('������');
disp(vpa(wucha/norm(x0,inf),8));
disp('�㶯������ϵ��������������')
cond(A0)%ϵ������A����������
%detA=A-A0;%ϵ������ı仯��
%norm(detA,inf) %ϵ������ı仯�� ����ķ���
%norm(A,inf) %ϵ������� ����ķ���
%detx=(cond(A,inf)*(norm(detA,inf)/norm(A,inf)))/(1-cond(A,inf)*(norm(detA,inf)/norm(A,inf)))%������������