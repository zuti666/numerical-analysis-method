function [y,dy,d2y] = funN(x)
%  �������غ���ֵ��һ�׵��������׵���
y=sin(x)-6*x^2+exp(-x);            %��Ҫ�Ķ�
ff=str2sym('sin(x)-6*x^2+exp(-x)'); %������ź���  ����Ҫ�Ķ�
if nargout>1  %������ֵ����1��ʱ
    dy=diff(ff);            %��һ�׵���    
    dy=subs(dy,x);        %��ֵ
end
if nargout==3
    d2y=diff(ff,2); %����׵���
    d2y=subs(d2y,x);%��ֵ
end
