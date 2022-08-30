function [x,iters] = Jacobi(A,b,x0,tol)

% Solve linear system Ax = b
% using Jacobi iteration
% A is an n by n matrix
% b is an n by 1 vector
% x0 is an n by 1 vector (initial guess)
% x is an n by 1 vector
% tol is error tolerance
%

[n, n] = size(A);     % Find size of matrix A

xold = zeros(n,1); 
xnew = zeros(n,1);
xold = x0;
incr = 1;
iters =  0;


while (abs(incr)>tol) 

    for i = 1:n
        xnew(i) = (1/A(i,i))*(b(i) - sum(A(i,:)*xold) + A(i,i)*xold(i));
    end
    
    %Errror of Jacobi using max norm
    incr = norm(xnew-xold,inf)/norm(xnew,inf);
    
    xold = xnew;
        
    iters = iters +1;
end

x = xnew;
iters