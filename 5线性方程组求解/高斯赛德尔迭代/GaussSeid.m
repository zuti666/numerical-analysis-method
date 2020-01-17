function [x,n,G,f]=GaussSeid(A,b,x0,eps,M)
% GaussSeid.mΪ�ø�˹-���¶�������������Է�����
% AΪ���Է������ϵ������
% bΪ���Է�����ĳ�������
% x0Ϊ������ʼ������
% epsΪ��ľ��ȿ���
% MΪ������������
% xΪ���Է�����Ľ�
% nΪ������辫�ȵĽ�ʵ�ʵĵ�������

D=diag(diag(A));    %��A�ĶԽǾ���
L=-tril(A,-1);      %��A����������
U=-triu(A,1);       %��A����������
G=(D-L)\U;           %��������G
disp(G);
f=(D-L)\b ;          %g
disp(f);
x=G*x0+f;
disp(vpa(x,8));    %
n=1;                  %��������
while norm(x-x0,inf)>=eps
    x0=x;
    x=G*x0+f;
    n=n+1;
    disp(n);
    disp(vpa(x,8));    %
    if(n>=M)
        disp('Warning: ��������̫�࣬���ܲ�������');
        return;
    end
end