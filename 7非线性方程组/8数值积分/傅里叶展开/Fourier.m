function [A,B,F]=Fourier(f,x,n,low,top)
% Fourier.m为Fourier级数展开函数
% f为给定的函数
% x为自变量
% n为展开项数
%low，top为n的区间，默认值为[-pi,pi]
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
