function [x,iters] = multnewton(x0,f,J,tol,steps)
% Newton’s method for system f(x) = 0.
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

xg = x0; 
incr = 1;
iters = 0; 

while (abs(incr) > tol && iters<steps)
    Dx = J(xg)\f(xg); % solve for increment
    xg = xg - Dx; % add on to get new guess
    incr = norm(Dx,inf);
    iters = iters+1;
end

x = xg;