%���߷�������Է���
function [xr,err,k]=secant(fun,x0,x1,Tol)
%funΪ�����ķ����Է���
%x0,x1Ϊ�����ĳ�ʼֵ
%TolΪ����ֵ������
%xrΪ���߷���õĽ��ƽ�
if nargin ==3
    Tol=1e-6;
end
f0=feval(fun,x0);
f1=feval(fun,x1);
k=1;
while abs(x0-x1)> Tol
    x2=x1-f1*(x1-x0)/(f1-f0);  %���߷�������ʽ
    f0=f1;
    x0=x1;
    x1=x2;
    f1=feval(fun,x1);
    k=k+1;
end
xr=x2;
err=abs(x0-x1);


    