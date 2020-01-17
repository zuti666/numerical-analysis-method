fun=inline('[x^2-2*x*exp(-x)+exp(-2*x)]');
[x_star,index,it] = Newton(fun,0.5)
