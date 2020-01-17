function [a,k]=newton666(f,x1,tol,m)
%fΪ����f(x)=0�е�f(x),
%aΪ���ƽ⣬kΪ����������
%x1Ϊ��ʼֵ��tolΪ������ޣ�mΪ����������
syms x;%�����f;
f(x)=f;
t(x)=diff(f(x));%f(x)�ĵ���Ϊt(x)
g(x)=x-f(x)/t(x);%g(x)Ϊ������ʽ�ű���x
p=[];%����һ�������Ÿ��׵���ֵ
p(1)=x1;
for i=1:m
    x=p(i);
    p(i+1)=g(x);
    if abs(p(i+1)-p(i))<tol%�жϾ����Ƿ�ﵽҪ��
        a=p(i+1);
        k=i+1;
        m=i;
        break;
    end
end
format long g%���a��ʮ��λ������
if abs(p(m+1)-p(m))>=tol%����n�κ�ﲻ������Ҫ��
    a=x1;k=0;
    disp('Method failed');
end
end
    
    