function [r,n]=StablePoint(F,x0,eps)
% StablePoint.m����Ϊ�ò����㷨�������Է�����
% FΪ�����ķ����Է�����
% x0Ϊ�����ĳ�ʼֵ
% epsΪ��ľ���
% rΪ��������Է��̵�һ���
% nΪ��������
if nargin==2
    eps=1.0e-6;
end
x0 = transpose(x0);
n=1;
tol=1;
while tol>eps
    r= subs(F,findsym(F),x0);                           %������ʽ
    tol=norm(r-x0);                %ע����������󷨣�normΪ�����ŷ����·���
    n=n+1;
    x0=r;
    if(n>100000)                        %������������
        disp('��������̫�࣬���ܲ�������');
        return;
    end
end