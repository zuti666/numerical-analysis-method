function y = serttow(fun,a,b,tol,varargin)
% serttow.mΪ����ζ��ַ������
% yΪ����Ļ��ּ�������
% funΪ�������ľ��
% a��b�ֱ�Ϊ���ֵ�������
% tolΪ���Ŀ��Ʋ�������Ĭ��ֵΪ1e-4
% varargin��ʾfun�����Ĳ�����Ŀ�Ĳ���
if nargin<3; 
    error('fun,a,b must be defined'); % �����������3����ʾ����
elseif nargin==3;
    tol = 1e-4; % ����tol��ȱʡֵ
end
y0 = sum(fun([a,b],varargin{:}),2)/2; % ��ʼ������������ֵ
y = y0; % ��ʼ������ֵ
Er = inf; % ��ʼ���
h = b-a; % ��ʼ����
n=1; % ��ʼ������
while Er>tol;
    y0 = y; % ����y0����ֵ
    h = h/2; % �������䳤��
    n=n*2; % ˫��������Ŀ
    x = a+(2*[1:n/2]-1)*h; % ���������
    y = y0/2+h*sum(fun(x,varargin{:}),2); % ���㺯��ֵͬʱ���»���ֵ
    Er=max(abs(y-y0)); % ���㵱ǰ���
end