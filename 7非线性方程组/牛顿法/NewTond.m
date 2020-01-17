%��Newton���������Է�����
function [x,n,data]=NewTond(x0,tol)
%����x0Ϊ������ֵ
%tolΪ������أ����ȱʡĬ��Ϊ10�ĸ����η�
%data��������м����ݣ����ڼ��������������
if nargin==1
    tol=1e-6;
end
x1=x0-F(x0)/Jacobian1(x0);
n=1;
%��������
while (norm(x1-x0) > tol )&&(n<500)
    x0=x1;
    x1=x0-F(x0)/Jacobian1(x0);
    n=n+1;
    %data ��������м�����
    data(:,n)=x1;
end
x=x1;

