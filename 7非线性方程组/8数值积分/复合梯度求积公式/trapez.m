function y = trapez(fun,a,b,n,varargin)
% trapez.m����Ϊ�����η�������
% yΪ����Ļ��ּ�������
% funΪ�������ľ��
% a��b�ֱ�Ϊ���ֵ�������
% nΪ�ȼ��ָ��������Ŀ��Ĭ��ֵΪ1000
% varargin��ʾfun�����Ĳ�����Ŀ�Ĳ���
if nargin<3; 
    error('fun,a,b must be defined'); % �����������3����ʾ����
elseif nargin==3;
    n = 1000; % ����n��ȱʡֵ
end
h = [b-a]/n; % ���㲽��
x = a+h*[0:n]; % ���������
if isempty(varargin);
    fx = feval(fun,x); % ���㺯��ֵ
else
    fx = feval(fun,x,varargin{:}); % ���㺯��ֵ
end
y = h*[(fx(1)+fx(end))/2+sum(fx(2:end-1))]; % ����ʽ�����