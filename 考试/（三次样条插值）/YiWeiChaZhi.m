
x1=0:0.5:3;%数据点
y1=[0 0.4794 0.8415 0.9975 0.9093 0.5985 0.1411];
xq1=1.5 ;%被插值的点
cu1=interp1(x1,y1,xq1,'pchip'); %三次样条插值计算
disp(vpa(cu1,8));
figure;
plot(x1,y1,'bo',xq1,cu1,'r*-');
pp = interp1(x1,y1,'pchip','pp');
[breaks,coefs,L,order,dim] = unmkpp(pp)

