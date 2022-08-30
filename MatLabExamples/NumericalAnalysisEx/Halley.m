function [x,iters] = Halley(x0,f,df,d2f,tol)
% Halley’s method for f(x) = 0.
%
% input: x0  - initial guess
%        f   - function f
%        df  - derivative of the function f
%        d2f  - 2nd derivative of the function f
%        tol - error tolerance
%
% output: x - the approximate root f(x) = 0
%         iters - the number of iterations required
%

xg = x0; 
incr = 1;
iters = 0; 


while (abs(incr) > tol)
    incr = -f(xg)/( df(xg)-( (f(xg)*d2f(xg))/2*df(xg) ) );
    xg = xg + incr;
    
    iters = iters + 1;
end

% Final value
x = xg;