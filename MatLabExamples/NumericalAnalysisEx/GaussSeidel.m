function [x,iters]  = GaussSeidel(A,b,x0,tol)

% Solve linear system Ax = b
% using Gauss Seidel iteration
% A is an n by n matrix
% b is an n by 1 vector
% x0 is an n by 1 vector (initial guess)
% x is an n by 1 vector
% tol is error tolerance

[n, n] = size(A);     % Find size of matrix A

x = zeros(n,1);
incr = 1;
iters = 0;


while (abs(incr)>tol) 
    z = x;
    for i = 1:n
      x(i) = (1/A(i,i))*(b(i) - sum(A(i,1:i-1)*x(1:i-1)) - sum(A(i,i+1:n)*x(i+1:n)));

    end
   
    %Errror of Gauss Seidel using max norm
   incr = norm(x-z,inf)/norm(x,inf);
    
    x';
    iters = iters+1;
end
iters
