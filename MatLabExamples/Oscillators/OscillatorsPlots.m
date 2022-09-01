%% File to plot three versions of a harmonic oscillator

%% Question 1 a (i):
hold on;

title("x(t) simple haronic spring");

yline(0,'k-');
xline(0,'k-');

xlabel("t time in s");
ylabel("x distance of the mass from it's equlibrium position");

t = 0:0.1:10;

x = cos(2.*t);
plot(t,x,'b')

hold off;

%% Question 1 b:
hold on;

title("x(t) damped harmonic oscillator");

yline(0,'k-');
xline(0,'k-');

xlabel("t time in s");
ylabel("x distance of the mass from it's equlibrium position");

t = 0:0.1:10;

x1 = exp((-1./2).*t).*(cos((sqrt(15)./2).*t)-(4./sqrt(15)).*sin((sqrt(15)/2).*t));
plot(t,x1,'b')

x2 = (6./5).*exp(-t)-(1/5).*exp(-4.*t)
plot(t,x2,'r')

x3 = exp(-2.*t) + 2.*t.*exp(-2.*t)
plot(t,x3,'g')

hold off;
%% Question 1 c :
hold on;

title("x(t) forced harmonic oscilator");

yline(0,'k-');
xline(0,'k-');

xlabel("t time in s");
ylabel("x distance of the mass from it's equlibrium position");

t = 0:0.1:10;

x = cos(2.*t) -(1./8).*sin(2.*t) + (t./4).*cos(2.*t);
plot(t,x,'b')

hold off;
