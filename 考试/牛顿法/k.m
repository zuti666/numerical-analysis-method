%计算理论迭代次数k
L1      %L
chushizhi;   %初始值 
x1=subs(g,'x',chushizhi) ;%第一次迭代结果
disp(vpa(x1,8));
k1=log(  (1-L1)*Tol/ abs(x1-chushizhi)     )    /      log(L1);
disp('理论迭代次数');
disp(vpa(k1,4)); %迭代次数理论估计