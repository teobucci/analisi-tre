%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 7.4
f = @(n,x) sqrt(n) ./ (1+(n.*x).^2);

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([-0.5 1.5 -0.5 20])
%daspect([1 6 1])
for i=1:3:18
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 7.5

f = @(n,x) (x<(1./n)).*(x>0).*(n.^2);

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([0 2*pi -1.5 1.5])
daspect([1 7 1])
for i=1:1:5
	txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 7.6

f = @(n,x) (x<1).*(x>0).*(  (1-exp(-x)) ./ (x.* ((1-x).^(1./n)))  );

figure;
hold on
grid on
x = linspace(0,1,200);
axis([-0.5 1.5 -0.5 20])
daspect([1 10 1])
for i=1:1:4
	txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 8.7

f = @(n,x) atan(n.*x);

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([0 2*pi -1.5 1.5])
daspect([1 3 1])
for i=1:3:18
    plot(x,f(i,x), 'LineWidth', 1);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 9.2
f = @(n,x) pi - 2*atan(abs(x).^n);

figure;
hold on
grid on
x = linspace(-3,3,200);
%axis([-0.5 1.5 -0.5 20])
daspect([1 1 1])
for i=1:2:18
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 9.4

syms x n
f = x;

figure
hold on
grid on
daspect([1 1 1])
axis([-8 8 -1 7])

% periodo
a = 0;
b = 2*pi;
T = b-a;

a0 = (2/T)*int(f,x,a,b);
sum = 0;

fplot('mod(x,2*pi)',[-2*pi-0.5,2*pi+0.5], 'DisplayName', 'f(x)') % f originale

for n=1:6
    %finding the coefficients 
    an  = (2/T)*int(f*cos(2*pi*n*x/T),x,a,b);
    bn  = (2/T)*int(f*sin(2*pi*n*x/T),x,a,b);
    sum = sum + (an*cos(2*pi*n*x/T) + bn*sin(2*pi*n*x/T));
    
    if mod(n,2)==1
        txt = ['n = ',num2str(n)];
        fplot(x,(sum+a0/2),[-2*pi,2*pi], 'DisplayName',txt);
    end
end
legend show
legend('Location','southeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 10.1

f = @(n,x) sqrt(n).*exp(-n.*x);

figure;
hold on
grid on
x = linspace(-2,2,100);
axis([-2 2 -0.5 3])
daspect([1 1 1])
for i=1:1:12
	txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 10.2

f = @(n,x) 2*n.^2.*(1-cos(x./n)) ./ ( (1+x./n).^n );

figure;
hold on
grid on
x = linspace(-1,20,200);
axis([-1 20 -0.5 1.5])
daspect([1 0.2 1])
for i=1:3:18
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 11.3.1

f = @(x) (abs(x)<1).*(exp(-1./(1-x.^2)));

figure;
hold on
grid on
x = linspace(-2,2,300);
axis([-2 2 -0.5 1])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 11.3

f = @(n,x) n.*exp(-n.*abs(x));

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([0 2*pi -1.5 1.5])
daspect([1 2 1])
for i=1:1:5
	txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 11.4
f = @(n,x) (abs(x)<=(1./n)).*(-3*n) + (abs(x)<=(2./n)).*(abs(x)>(1./n)).*(2*n);

figure;
hold on
grid on
x = linspace(-3,3,200);
%axis([-0.5 1.5 -0.5 20])
daspect([1 6 1])
for i=1:1:5
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 11.5
f = @(n,x) n.*x.^n;

figure;
hold on
grid on
x = linspace(0,1,200);
%axis([-0.5 1.5 -0.5 20])
daspect([1 6 1])
for i=1:2:10
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 12.4

f = @(n,x) (x<=1).*(n*exp(n*(x-1)));

figure;
hold on
grid on
x = linspace(-2,1);
axis([-2 1 -0.5 7])
daspect([1 3 1])
for i=1:1:6
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 13.1

f = @(x) atan(1./x);

figure;
hold on
grid on
x_neg = linspace(-6,-0.001,80);
x_pos = linspace(0.001,6,80);
%axis([0 2*pi -1.5 1.5])
daspect([1 1 1])
plot(x_neg,f(x_neg), x_pos,f(x_pos),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 13.2

f = @(x) (x+x.^2).*(0<x).*(x<2) + 6*(2<x).*(x<=5);

figure;
hold on
grid on
x = linspace(0,5,80);
axis([-1 7 -1 7])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 13.3

f = @(n,x) (1-exp(-x)).*(x>=0).*(x<n) + exp(-x).*(exp(n)-1).*(x>=n);

figure;
hold on
grid on
x = linspace(-1,20,200);
%axis([0 2*pi -1.5 1.5])
daspect([7 1 1])
for i=1:3:15
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northeast')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 14.4

f = @(n,x) n ./ (1+n.^2.*(x.^2));

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([0 2*pi -1.5 1.5])
daspect([1 3 1])
for i=1:2:12
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 14.6

f = @(n,x) n.^2.*x.*exp(-n.*abs(x));

figure;
hold on
grid on
x = linspace(-2,2,200);
%axis([0 2*pi -1.5 1.5])
daspect([1 3 1])
for i=1:2:12
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show
legend('Location','northwest')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 15.1

f = @(x) exp(-abs(x));

figure;
hold on
grid on
x = linspace(-4,4,200);
%axis([-1 7 -1 7])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 15.4

f = @(x) 1./(cosh(x));

figure;
hold on
grid on
x = linspace(-4,4,200);
%axis([-1 7 -1 7])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 15.5

f = @(x) 1./((1+x.^2).^2);

figure;
hold on
grid on
x = linspace(-3,3,200);
%axis([-1 7 -1 7])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 15.6

f = @(x) 1./sqrt(abs(x));

figure;
hold on
grid on
x = linspace(-5,5,300);
%axis([-1 7 -1 7])
daspect([1 1 1])
plot(x,f(x),'Color','b','LineWidth', 1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% esempioFunzioneD

f = @(x) exp(1./(x.^2-1)).*(abs(x)<1);

figure;
hold on
grid on
x = linspace(-2,2,100);
axis([-2 2 -.5 1])
daspect([1 1 1])
plot(x,f(x),'LineWidth', 2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% deltaGaussianaLimite

f = @(n,x) n.* 1 / sqrt(2*pi)*exp(-0.5*(n.*x).^2);

figure;
hold on
grid on
x = linspace(-2,2, 200);
axis([-2 2 -0.5 5])
daspect([1 2 1])
for i=1:2:12
    txt = ['n = ',num2str(i)];
    plot(x,f(i,x), 'LineWidth', 1, 'DisplayName',txt);
end
legend show