x1=[ 0.66666667
   -0.77777778
 1.3877788e-17];  %由结果改


h1=eps*(1-norm(G,inf))/norm(x1-x0,inf);
h2=norm(G,inf);
k1= log(h1)/log(h2); %迭代次数
disp(k1);


p=abs(max(eig(G)));
R=-log(p);
disp('渐进收敛速度')
disp(R);  %渐进收敛速度

disp('减小为原来的1%需要迭代次数');
tr=0.01;%原来的1%
k2=-log(tr)/R;
disp(k2);