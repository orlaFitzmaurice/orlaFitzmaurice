function [x,iters] = SOR(A,b,x0,omega,tol)

% Solve linear system Ax = b
% using SOR iteration
% A is an n by n matrix
% b is an n by 1 vector
% x0 is an n by 1 vector (initial guess)
% x is an n by 1 vector
% tol is error tolerance
% omega = weighting parameter, 1 < omega < 2

[n, n] = size(A);     % Find size of matrix A

x = zeros(n,1);
x = x0;
incr = 1;
iters = 0;

while (abs(incr)>tol) 
        z = x;

    for i = 1:n
      x(i) = (1-omega)*x(i) + (omega/A(i,i))*(b(i) - sum(A(i,1:i-1)*x(1:i-1)) - sum(A(i,i+1:n)*x(i+1:n)));
    end
    
  %Error of SOR using max norm
  incr = norm(x-z,inf)/norm(x,inf);
  iters = iters +1;
     
end
iters