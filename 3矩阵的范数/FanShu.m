clc;clear ;close all;
A=[2 4 6;
   1 3 5;
   0 2 9;]; %����A
b=[7 5 4]';%����b

nA1=norm(A,1); %����A��1����
nA2=norm(A,2); %����A��2����
nAinf=norm(A,inf); %����A�������
nAf=norm(A,'fro'); %����A��F����

nb1=norm(b,1); %����b��1����
nb2=norm(b,2); %����b��2����
nbinf=norm(b,inf); %����b�������
nbf=norm(b,'fro'); %����b��1����
