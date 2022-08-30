%% MS4014 Numerical Anaylsis Assignment 
% 12/04/2022
% 20237154 Orla Fitzmaurice
 %% Q 1 (d)
 
 %%
 % Here is my plot of 1 + tan(x)
 %
 
 hold on;

title("f(x) = 1 + tan(x)");
xlabel("x");
ylabel("y");


yline(0,'k-');
xline(0,'k-');

x = 0:0.1:8;
ylim([-5,5])

y = 1 + tan(x);

plot(x,y,'b')

hold off;
 
%%
% 
% Here is my solution to Q1 where you can see the roots x1 = 2.356194490192345
% with 6 iterations, and x2 = 5.497787143782138 with 4 iterations
% 
 
 format long
 f = @(x) 1 + tan(x);
 df = @(x) (sec(x))^2;
 d2f = @(x) 2*((sec(x))^2)*tan(x);
 
 [x1,iters1] = Halley(2.5,f,df,d2f,1e-12)
 [x2,iters2] = Halley(5.5,f,df,d2f,1e-12)

  %% Q2 
  
  %% Q2 (a)
  % Here is my solution to Q2 (a), I have found one set of roots for the
  % system x1 = [0.401077045775061; 1.235485200613828; 3.363437753611112]
  % with 7 iterations.
  %
  % As you can see from my output, I have found the same two roots
  % twice using different initial guesses. I left this in because
  % no matter what initial guess I tried I kept getting the same roots,
  % just found using different number of iterations.
 
 format long
 f = @(x) [x(1)+x(2)+x(3)-5;x(1)^2 + x(2)^2 + x(3)^2 - 13;x(1)^3 + x(2)^3 + x(3)^3 - 40];
 J = @(x) [1,1,1;2*x(1),2*x(2),2*x(3);3*(x(1)^2),3*(x(2)^2),3*(x(3)^2)];
 
 %Roots 1
 x1 =  [1;2;3];
 [x1,iters] = multnewton(x1,f,J,10e-10,200)
 
 x2 =  [-10;-11;-12];
[x2,iters] = multnewton(x2,f,J,10e-10,200)
 
 %% Q 2 c
 % Here is my solution to Q2 (c), I used the broyden function I wrote
 % to find four roots for the system:
 % x1 = [-1.597406862934387;2.223704557326811] with 2000 iterations, 
 % x2 =[2.633645959250824;0.289513037043148] with 79 iterations, 
 % x3 =[1.443556044179248; 1.504516792352986] with 189 iterations,
 % x4 =[ -0.709373573280753;-2.092222758400996] with 107 iterations

 format long
 f = @(x) [x(1)^2 + x(1)*(x(2)^3)-7;3*(x(1)^2)*x(2)-(x(2)^3)-6];
 J = @(x) [2*x(1)+(x(2)^3),3*x(1)*(x(2)^2);6*x(1)*x(2),3*(x(1)^2)-3*(x(2)^2)];
 
 %Root 1
 x1 =  [-1;3];
 [x1,iters] = broyden(x1,f,J,10e-10,2000)
 
 %Root 2
  x2 =  [1;0];
 [x2,iters] = broyden(x2,f,J,10e-10,2000)
 %Root 3
 x3 =  [3;4];
 [x3,iters] = broyden(x3,f,J,10e-10,2000)
 
 %Root 4
  x4 =  [-1;-1];
 [x4,iters] = broyden(x4,f,J,10e-10,2000)
 
 %% Q3 
 
 %%
 % Here are my solutions to Q3
 % I used the Jacobi function to find the solution to the system to be 
 % xJ =[2.999999046325684;1.999999046325684;0.999999046325684] with 14
 % iterations. 
 %
 % I used the Gauss Seidel function to find the solution to the
 % system to be xG =[2.999999642372131;1.999999821186066;0.999999955296516]
 % with 8 iterations.
 %
 %I used the SOR function to find the solution to the system to be 
 % xS1 = [2.999999992326067;1.999999997219903;1.000000000142202] with
 % w=1.05 and 7 iterations and 
 % xS2 =[3.000000163644878;1.999998913695293;1.000000635667327] with w=1.8
 % and 65 iterations.
 %
 % When w = 1.8 the SOR method needs way more iterations to converge
 %
 %
 % I found the condition number of A to be 2.571428571428571.
 % Since k>1, is large, the matrix is ill-conditioned and 
 % it can be possible for the residual to be small and the
 % error to be large so it can be very diffucult to find 
 % the correct solution using Gaussian Elimination because a 
 % small error with have a big effect
 
 A = [4,-1,0;-1,4,-1;0,-1,4];
 b = [10;4;2];
 x0 = [0;0;0];
 
 xJ = Jacobi(A,b,x0,10e-7)
 xG = GaussSeidel(A,b,x0,10e-7)
 xS1 = SOR(A,b,x0,1.05,10e-7)
 xS2 = SOR(A,b,x0,1.8,10e-7)

r = norm(A,inf);
t = norm(inv(A),inf);

%Condition Number of A
k = r*t

%% Code

%% 
% Here are the functions I wrote for this assignment.
%

%%
% 
% For Q1, I wrote this function called Halley.m
% 

%% 
%
% <include>Halley.m</include>
%
%%
% 
% For Q2 (a), I adopted this function from labs we completed called 
% multnewton.m
% 

%% 
%
% <include>multnewton.m</include>
%

%%
% 
% For Q2 (b), I wrote this function called broyden.m
% 

%% 
%
% <include>broyden.m</include>
%
%%
% 
% For Q3, I adopted the function from labs we completed called Jacobi.m
% 

%% 
%
% <include>Jacobi.m</include>
%
%%
% 
% For Q3, I adopted the function from labs we completed called GaussSeidel.m
% 
%% 
%
% <include>GaussSeidel.m</include>
%
%%
% 
% For Q3, I adopted the function from labs we completed called SOR.m
% 
%% 
%
% <include>SOR.m</include>
%