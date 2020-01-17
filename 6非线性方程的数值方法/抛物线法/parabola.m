%�������߷�������Է��̵ĸ�
function xr=parabola(funp,x0,x1,x2,D)
%funΪ�����ķ����Է���
%x1,x2,x3Ϊ�����ĳ�ʼֵ
%DΪ����ֵ������
%xΪ����ķ����Է��̵Ľ��ƽ�
if nargin<5         %����D��Ĭ��ֵ
    D=1e-6;
end
ak=inf; %��ak��ֵ
while abs(ak)>D
    f2=feval(funp,x2);
    f1=feval(funp,x1);
    f0=feval(funp,x0);
    ak=f2;
    ck=[(f0-f2)/(x0-x2)-(f2-f1)/(x2-x1)]/(x0-x1);
    bk=(f2-f1)/(x2-x1)+ck*(x2-x1);
    x0=x1;
    x1=x2;
    x2=x2-2*ak/[bk+sign(bk)*sqrt(bk^2-4*ak*ck)];
end
xr=x2;