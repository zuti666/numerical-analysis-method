%�������������Է���
function [p0,k,err,p]=fipt(fun,p0,tol,max1)
% funΪ�����ĵ�������
%p0Ϊ�����ĳ�ʼֵ
%max1Ϊ���������������
for k=2:max1
%kΪ�����еĵ���������1
%pΪ������Ľ���ֵ
%errΪ���
P(1)=p0;
    P(k)=feval(fun,P(k-1));
    err=abs(P(k)-P(k-1));
    p=P(k);
    if err<tol
        break;
    end
    if k==max1
        disp('�ﵽ�������������˳�����');
    end
end

