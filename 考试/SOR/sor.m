function [x,n,flag]=sor(A,b,x0,Tol,M,max1)
% sor����Ϊ���ɳڷ�������Է�����
% AΪ���Է������ϵ������
% bΪ���Է�����ĳ�������
% epsΪ����Ҫ��ȱʡֵΪ1e-5
% MΪ�������ӣ�ȱʡΪ1
% max1Ϊ������������ȱʡֵΪ100
% xΪ������Ľ�
% nΪ��������
% flagΪָ�������flag='OK��'��ʾ���������ﵽָ��Ҫ��
% flag='fail!'��ʾ����ʧ��


k=length(A);n=0;
x=x0; y=zeros(k,1);
flag='OK!';
while 1
    disp(n);
    y=x;
    disp(y);
    for i=1:k
        z=b(i);
        for j=1:k
            if j~=i
                z=z-A(i,j)*x(j);
            end
        end
        if abs(A(i,i))<1e-10||n==max1
            flag='fail!';
            return;
        end
        z=z/A(i,i);
        x(i)=(1-M)*x(i)+M*z;
    end
    eps=norm(y-x,inf);
    disp(vpa(eps,6));
    if eps<Tol
        break;
    end
    n=n+1;
end
