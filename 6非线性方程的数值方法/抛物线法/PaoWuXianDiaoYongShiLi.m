%���������߷��������Է���
fplot(@(x)(x.^3*cos(x)+2*x.^2-2*sin(x)),[1,3]);
hold on;
plot(xlim,[0,0],'m-.');
a=1;b=2;x0=3;
%���������߷�������Է���
xr=parabola('funp',a,b,x0);
yxr=feval('funp',xr);
plot(xr,yxr,'r*');
disp('�����߷���÷��̽��ƽ�Ϊ��');disp(xr);