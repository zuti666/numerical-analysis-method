a=0;b=2;
Tol=1e-3;

h1=(b-a)/2;
fa=fun(a)
f1=fun(a+h1/2)
fb=fun(b)
s1=h1/3*(fun(a)+4*fun(a+h1)+fun(b)) %S(a,b)
s21=h1/6*(fun(a)+4*fun(a+h1/2)+fun(a+h1)) %S(a,a+b/2)
s22=h1/6*(fun(a+h1)+4*fun(a+3/2*h1)+fun(b)) %S(a+b/2,b)
abs(s1-s21-s22);  %S(a,b)-S(a,a+b/2)-S(a+b/2,b)
