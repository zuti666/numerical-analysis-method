%�������۵�������k
L1      %L
chushizhi;   %��ʼֵ 
x1=subs(g,'x',chushizhi) ;%��һ�ε������
disp(vpa(x1,8));
k1=log(  (1-L1)*Tol/ abs(x1-chushizhi)     )    /      log(L1);
disp('���۵�������');
disp(vpa(k1,4)); %�����������۹���