function [x,n]=Jacobifun(A,b,x0,eps,varargin)
% Jacobifun.m����Ϊ�����ſɱȵ�����������Է�����
% AΪ���Է������ϵ������
% bΪ���Է�����ĳ�������
% x0Ϊ������ʼ������
% epsΪ��ľ��ȿ���
% vararginΪ������������
% xΪ���Է�����Ľ�
% nΪ������辫�ȵĽ�ʵ�ʵĵ�������
if nargin==3
    eps= 1.0e-6;
    M  = 200;
elseif nargin<3
    error
    return
elseif nargin ==5
    M  = varargin{1};
end  
D=diag(diag(A));    %��A�ĶԽǾ���
L=-tril(A,-1);      %��A����������
U=-triu(A,1);       %��A����������
B=D\(L+U);
f=D\b;
x=B*x0+f;
n=1;                  %��������
while norm(x-x0)>=eps
    x0=x;
     x=B*x0+f;
    n=n+1;
    if(n>=M)
        disp('Warning: ��������̫�࣬���ܲ�������');
        return;
    end
end