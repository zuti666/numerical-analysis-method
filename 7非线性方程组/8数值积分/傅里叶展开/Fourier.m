function [A,B,F]=Fourier(f,x,n,low,top)
% Fourier.mΪFourier����չ������
% fΪ�����ĺ���
% xΪ�Ա���
% nΪչ������
%low��topΪn�����䣬Ĭ��ֵΪ[-pi,pi]
if nargin==3,
    low=-pi;
    top=pi;
end
T=(top-low)/2;
if low+top
    f=subs(f,x,x+T+low);
end
A=int(f,x,-T,T)/T;
B=[];
F=A/2;
for i=1:n
    An=int(f*cos(i*pi*x/T),x,-T,T)/T;
    Bn=int(f*sin(i*pi*x/T),x,-T,T)/T;
    A=[A,An];
    B=[B,Bn];
    F=F+An*cos(i*pi*x/T)+Bn*sin(i*pi*x/T);
end
if low+top
    F=subs(F,x,x-T-low);
end
