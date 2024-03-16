%% Question 1
x = 0:0.1*pi:2*pi;
y = sin(x);
plot(x,y)
title('sine function')
xlabel('x')
ylabel('sin(x)')

%% Question 2
x = 0:0.1*pi:2*pi;
y1 = sin(x);
y2 = cos(x);
plot(x,y1);
hold on
plot(x,y2);
title('Sine & Cosine')
legend('sine','cosine');
xlabel('x');
axis([-1 2*pi+1 -1.5 1.5]);

%% Question 3
close all
subplot(2,1,1);
x = -1.5:0.1:1.5;
y = tan(x);
plot(x,y);
title('Subplot 1: y = tan(x)');
xlabel('x');
ylabel('tan(x)');

subplot(2,1,2);
y = sinh(x);
plot(x,y);
title("Subplot 2: y = sinh(x)");
xlabel('x');
ylabel('sinh(x)');

%% Question 4
close all
fplot(@(t) 5*t^2)
hold on
fplot(@(t) 5*((sin(t))^2) + t*(cos(t)^2))
fplot(@(t) sin(t) + log(t))

%% Question 5
close all
subplot(2,2,1);
x = 0:pi/100:20*pi;
y = x.*sin(x);
z = x.*cos(x);
plot(x,y)
title('xsin(x)');
xlabel('x')
ylabel('xsin(x)');

subplot(2,2,2);
polarplot(x,y)

subplot(2,2,3);
plot3(x,y,z)
title('3D plot')
xlabel('x');
ylabel('xsin(x)');
zlabel('xcos(x)');

subplot(2,2,4);
contour(z);

%% Question 6
close all
x = -5:0.5:5;
y = -5:0.5:5;
[X,Y] = meshgrid(x,y);
Z = sin((X.^2 + y.^2).^0.5);

subplot(3,1,1);
mesh(X,Y,Z);

subplot(3,1,2);
surf(Z);

subplot(3,1,3);
surf(X,Y,Z);

%% Question 7
close all
G = [68, 83, 61, 70, 75, 82, 57, 5, 76, 85, 62, 71, 96, 78, 76, 68, 72, 75, 83, 93];
GS = sort(G);

subplot(2,1,1);
bar(GS)

subplot(2,1,2);
histogram(GS)

%% Question 8
close all
clearvars
x = linspace(1,5);
y = linspace(1,5);
[X,Y] = meshgrid(x,y);

subplot(2,2,1)
Z = (X .* exp(X)) / (2*Y);
mesh(X,Y,Z)

subplot(2,2,2)
Z = log(X.^2 + Y.^2);
mesh(X,Y,Z)

subplot(2,2,3)
P = 1;
Z = 2 * (Y.^P) / (X.^2 + Y .^ 2);
mesh(X,Y,Z);