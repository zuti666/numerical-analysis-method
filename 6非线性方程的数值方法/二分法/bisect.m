%����Ϊ���ַ�������Է�����Ľ�
function [k,c,err,yc]=bisect(fun,a,b,delta)
%fΪҪ���ĺ���
%a��b�ֱ�Ϊ�и���������ҽ�
%deltaΪ���������
%kΪ�������
%cΪ������ƽ�
%errΪc��������
%ycΪ����f��c�ϵ�ֵ
if nargin<4  %narginΪ��������Ĳ�����Ŀ
             %������С���ģ���������Ϊ10�ĸ����η�����Ĭ�Ͼ���Ϊ10�ĸ����η�
    delta=le-6;
end
                   %��������˵��Ӧ�ĺ���ֵ
ya=feval(fun,a); %feval �ú��������ƻ������Լ�������� x1,...,xM �����㺯���Ľ��
yb=feval(fun,b);
if yb==0          % ���˵�ֵΪ0ʱ���ؽ�
    c=b;
    return
end
     
if ya*yb>0        %����������Ĵ��ڶ���ʱ�������ز���ʾ������Ϣ
    disp('a,b�����и�����');
    return ;
end
 
%�ɾ��ȼ�������������� ��|Pn-p|<(b-a)/2^n ��n>lg((b-a)/delta)/lg2,��n>lg(b-a)-lg(delta)/lg2
max1=1+round((log(b-a)-log(delta))/log(2))  ;         %round()��������

for k=1:max1
    c=(a+b)/2;             %���ַ�����
    yc=feval(fun,c); 
    if yc==0                  
        a=c;b=c;
        break;
    elseif yc*yb<0
        a=c; ya=yc;
    else
        b=c; yb=yc;
    end
    if (b-a)<delta          %���㾫��Ҫ���˳�
        break;
    end
end
c=(a+b)/2;
err=abs(b-a); %errΪ���
              %abs()�������ֵ
yc=feval('funbiset',c); %ycΪc�㺯��ֵ


