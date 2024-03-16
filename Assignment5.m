%% Question 1
x = 0:pi/100:15*pi;
y = 0:pi/10:12;

diary my_data.dat
size(x);
size(y);
whos('x');
whos('y');
class(x);
class(y);
diary OFF

%% Question 2
x = 0:pi/100:10*pi;
y = pi * sin(x);

diary my_data.dat
whos('x');
whos('y');
diary OFF

%% Question 3
x = 0:0.1*pi:2*pi;
y1 = 2*cos(x);
y2 = 5*sin(x);

save('a5.mat','x','y1','y2');


%% Question 4
x = 0:0.1*pi:pi;
y1 = 2*x;
y2 = 5*sin(x);

save('a5.mat', 'x','y1','y2');

%% Question 5
close all
x = 0:pi/4:2*pi;
v = sin(x);
xq = 0:pi/16:2*pi;

yq = interp1(x,v,xq);
plot(x,v,'o',xq,yq);
hold on
plot(xq, spline(x,v,xq));

%% Question 6
close all
x = linspace(1,9,9);
v = [0 1.41 2 1.41 0 -1.41 -2 -1.41 0];
xq = linspace(1.5,8.5,9);
yq = interp1(x,v,xq);

subplot(2,1,1);
plot(x,v,'o', xq, yq);

subplot(2,2,1);
yq2 = spline(x,v,xq);
plot(x,v,'o', xq, yq2);
