%ţ�ٷ�������Է�����
function [xr,err,k]=Newton(fun,x0,Tol)
%xrΪţ�ٷ���ý��ƽ�
%funΪ����ĺ���
%x0Ϊ��ʼֵ
%TolΪ��ȷ��
%err Ϊ���
%kΪ��������

[f0,df]=feval(fun,x0);
if df==0
    error('d[f(x)]/dx =0 at x0');
end
d=f0/df;
k=0;
while abs(d)>Tol
    k=k+1;
    x1=x0-d;
    disp(k);
    disp('���');
    disp(vpa(x1,8));
    disp('���');
    disp(vpa(d,8));
    x0=x1;
    [f0,df]=feval(fun,x0);
    if df==0
        error('d[f(x)]/dx =0 at x0');
    end
    d=f0/df;
end
k=k+1;
x1=x0-d;
disp(k);
disp('���');
disp(vpa(x1,8));
disp('���');
disp(vpa(d,8));

xr=x1;
err=abs(d);
