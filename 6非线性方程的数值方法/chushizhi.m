%�ö��ַ�������[a,b]��ѡȡ��ʼֵ
function x0=chushizhi(f,a,b)
syms x;flase=1;
f(x)=f;
d(x)=diff(f(x));%f(x)�ĵ���Ϊd(x)
d2(x)=diff(d(x));%f(x)�Ķ��׵���
 while(flase==1)%���ַ�����ѭ��
    s=d(a);%��������d(x)����ɢ��ʽ�˻��ж�d(x)�Ƿ���
    p=d2(a);
    for i=a:0.01:b   %�������ĺ�����ɢ��
        s=s*d(i);
        if s<=0
            flase=1;
        end
        p=p*d2(i);
        if p<=0
             flase=1;
             return;
        end
    end       
if f(a)*f(b)==0%�������a��b��Ϊ���������
    if f(a)==0
        x0=a;
        return;
    else
        x0=b;
        return;
    end
else
        c=(a+b)/2;
        if f(a)*f(c)>0
            a=c;
        elseif f(a)*f(c)==0
            x0=c;
            return;
        else
            b=c;
        end
        if abs(f(a)/d(a))<(b-a)&&abs(f(b)/d(b))<(b-a)%�жϵõ����������Ƿ������ж����� 
            x0=(a+b)/2;
            flase=0;
        end
    end
end
end