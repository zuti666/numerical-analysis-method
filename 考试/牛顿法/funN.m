function [y,dy,d2y] = funN(x)
%  �������غ���ֵ��һ�׵��������׵���
y=exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3;            %��Ҫ�Ķ�
ff=str2sym('exp(6*x)-log(8)*exp(4*x)+3*(log(2)^2)*exp(2*x)-log(2)^3'); %������ź���  ����Ҫ�Ķ�
if nargout>1  %������ֵ����1��ʱ
    dy=diff(ff);            %��һ�׵���    
    dy=subs(dy,x);        %��ֵ
end
if nargout==3
    d2y=diff(ff,2); %����׵���
    d2y=subs(d2y,x);%��ֵ
end
