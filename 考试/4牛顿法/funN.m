function [y,dy,d2y] = funN(x)
%  �������غ���ֵ��һ�׵��������׵���
y=3^(3*x+1)-7*5^(2*x);            %��Ҫ�Ķ�
ff=str2sym('3^(3*x+1)-7*5^(2*x)'); %������ź���  ����Ҫ�Ķ�
if nargout>1  %������ֵ����1��ʱ
    dy=diff(ff);            %��һ�׵���    
    dy=subs(dy,x);        %��ֵ
end
if nargout==3
    d2y=diff(ff,2); %����׵���
    d2y=subs(d2y,x);%��ֵ
end
