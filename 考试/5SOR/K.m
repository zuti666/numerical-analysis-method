
%���
 L=[0 0 0;
    -A(2,1)/A(2,2) 0 0;
    -A(3,1)/A(3,3) -A(3,2)/A(3,3) 0]; %�Ծ���A���зֽ������Ǿ���L
U=[0 ,-A(1,2)/A(1,1), -A(1,3)/A(1,1) ;
    0 ,0     ,         -A(2,3)/A(2,2);
    0 ,0    ,        0;];%�Ծ���A���зֽ������Ǿ���U
D=diag(diag(A)); %����D
I=eye(3); %��λ����I
T=(I-w.*L)^-1*(  (1-w)*I+ w*U  ); %Tw
x1=[  0.8333
   -1.0069
   -0.2116];  %�ɽ����
if norm(T,inf)<1
    h1=Tol*(1-norm(T,inf))/norm(x1-x0,inf);
    h2=norm(T,inf);
    k1= log(h1)/log(h2); %��������
    disp((k1));
else
    if max(abs(eig(T)))<1
    p1=max(abs(eig(T)));
    h1=Tol*(1-p1)/norm(x1-x0);
    h2=p1;
    k1= log(h1)/log(h2); %��������
    disp('��������');
    disp((k1));
    end
end


p=abs(max(eig(T)));
R=-log(p);
disp('���������ٶ�')
disp(R);  %���������ٶ�


disp('��СΪԭ����1%��Ҫ��������');
tr=0.01;%ԭ����1%
k2=-log(tr)/R;
disp(k2);
norm(T,inf)
p1





