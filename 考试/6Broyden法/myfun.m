function p=myfun(t) %���庯��
  x=t(1);
  y=t(2);
  %z=t(3);
  p=[0,0]';
 %�����Է������Ӧ��f1,f2,f3
 p(1)=sin(4*pi*x*y)-2*y-x;
 p(2)=(4*pi-1)/(4*pi)*(exp(2*x)-exp(1))+4*exp(1)*y^2-2*exp(1)*x;
 
 
   
  