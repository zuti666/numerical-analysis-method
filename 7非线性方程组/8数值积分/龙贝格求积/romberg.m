function y = romberg(fun,a,b,tol,varargin)
% romberg.mΪ�������������
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
fab = feval(fun,[a,b],varargin{:});
r(1,1) = [b-a]/2*sum(fab);
k = 0; % ��ʼ���ű����
D = inf; % �������ĳ�ֵ
while D>tol;
    k = k+1; % ���½ű����
    x = a+(b-a)/2^k*[2*[1:2^(k-1)]-1]; % �������������
    fx = feval(fun,x,varargin{:}); % ���㺯��ֵ
    r(k+1,1)=0.5*[r(k,1)+(b-a)/2^(k-1)*sum(fx)]; % �����һ���е���һ��Ԫ��ֵ
    for m=2:k+1;
        r(k+1,m)=[4^(m-1)*r(k+1,m-1)-r(k,m-1)]/[4^(m-1)-1]; % ������һ��Ԫ��ֵ
    end
    D = abs(r(k+1,k+1)-r(k,k)); % ���µ�ǰ���
end
y=r(k+1,k+1); % ���ػ���ֵ