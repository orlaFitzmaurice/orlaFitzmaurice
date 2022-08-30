function [x,iters] = broyden(x0,f,J,tol,steps)
% Broyden’s method for system f(x) = 0.
%
% input: x0  - initial guess vector
%        f   - function f
%        J  - Jacobian
%        tol - error tolerance
%        steps - the max number of iterations the function is 
%               allowed to perform => prevents an infinite loop
%
% output: x - the approximate root f(x) = 0, in vector form
%         iters - the number of iterations required
%
%
incr = 1;
iters = 0; 
B = J(x0);
 
while (abs(incr) > tol && iters<steps)
   s = -B\f(x0);
   x1 = x0 + s;
   y = f(x1) - f(x0);
   r = ((y-B*s)*s')/((s')*s);
   B = B + r;
    
    incr = norm(r,inf);
    iters = iters+1;
end

x = x1;