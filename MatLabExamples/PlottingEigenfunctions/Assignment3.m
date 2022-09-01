%% Plotting eigenfunctions that I have calculated on the same graph
%% Question 1 a (i):
hold on;

title("y(x) eigenfunctions");

yline(0,'k-');
xline(0,'k-');

xlabel("x-axis");
ylabel("y-xis");

x = 0:0.01:5;

y1 = (exp(x)).*(sqrt(2)).*sin(pi*x);
plot(x,y1,'b')

y2 = (exp(x)).*(sqrt(2)).*sin(2.*pi.*x);
plot(x,y2,'r')

y3 = (exp(x)).*(sqrt(2)).*sin(3.*pi.*x);
plot(x,y3,'g')

hold off;
