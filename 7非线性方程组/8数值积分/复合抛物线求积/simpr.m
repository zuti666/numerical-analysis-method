function s=simpr(fun,a,b,n)
% simpr.m����Ϊ�������η������
% funΪ��������
% a,b�ֱ�Ϊ���ֵ�������
% nΪ������ĸ���
% sΪ����������������������ֵ
h=(b-a)/(2*n);
s1=0;
s2=0;
for k=1:n
    x=a+h*(2*k-1);
    s1=s1+feval('fun',x);
end
for k=1:(n-1)
    x=a+h*2*k;
    s2=s2+feval('fun',x);
end
s=h*(feval('fun',a)+feval('fun',b)+4*s1+2*s2)/3;

