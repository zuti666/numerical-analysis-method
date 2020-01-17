function [y] = FixedPointIter(x0,func,tol,MaxIter)  
% Version: 1.0 written by jbb0523 @2016-08-21  
    if nargin < 4  
        MaxIter = 100;  
    end  
    if nargin < 3  
        tol = 1e-3;  
    end  
    
    xn = x0;  
    fprintf('Iter  0: %16.14f\n',x0);  
    xnp1 = func(xn);  
    fprintf('Iter  1: %16.14f\n',xnp1);  
    criterion = abs(xnp1-xn);  
    xn = xnp1;  
    Iter = 1;  
    while(criterion>tol)  
        xnp1 = func(xn);  
        criterion = abs(xnp1-xn);  
        xn = xnp1;  
        Iter = Iter + 1;  
        fprintf('Iter %2.0d: %16.14f\n',Iter,xnp1);  
        if Iter>=MaxIter  
            break;  
        end  
    end  
    y = xnp1;  
end  