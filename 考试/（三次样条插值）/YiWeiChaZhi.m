
x1=0:0.5:3;%���ݵ�
y1=[0 0.4794 0.8415 0.9975 0.9093 0.5985 0.1411];
xq1=1.5 ;%����ֵ�ĵ�
cu1=interp1(x1,y1,xq1,'pchip'); %����������ֵ����
disp(vpa(cu1,8));
figure;
plot(x1,y1,'bo',xq1,cu1,'r*-');
pp = interp1(x1,y1,'pchip','pp');
[breaks,coefs,L,order,dim] = unmkpp(pp)

