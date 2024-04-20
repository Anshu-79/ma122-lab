% Question 1
%% a
[t, y] = ode45(@(t,y) 12*t^2 + 8*t + 4, [0 2], 2);
plot(t,y,'-o')

%% b
[t, y] = ode45(@(t,y) y*(exp(t)-1), [0 2], 1);
plot(t,y,'-o')

%% c
function dydt = odefcn(t,y)
    dydt = zeros(2,1);
    dydt(1) = y(2) - 1;
    dydt(2) = y(1) - t;
end
[t,y] = ode45(@(t,y) odefcn(t,y), [0 2], [1 1]);
plot(t,y,'-o')

%% d
[t,y] = ode45(@(t,y) t-0.1*y^2, [0 2], 1);
plot(t,y,'-o')
sol = [t,y];
x = 0.8;
yx = sol(sol(:,1)==x,2);

%% e
function dydt = odefcn2(y)
    dydt = zeros(2,1);
    dydt(1) = -y(2)/2 + y(1)*y(2)/20;
    dydt(2) = y(1) + y(1)*y(2)/10;
end
[t, y] = ode45(@(t,y) odefcn2(y), [0 2], [1 1]);
plot(t,y,'-o')


%% Question 2
%% a
[t, y] = ode23(@(t,y) 12*t^2 + 8*t + 4, [0 2], 2);
plot(t,y,'-o')

%% b
[t, y] = ode23(@(t,y) y*(exp(t)-1), [0 2], 1);
plot(t,y,'-o')

%% c
function dydt = odefcn3(t,y)
    dydt = zeros(2,1);
    dydt(1) = y(2) - 1;
    dydt(2) = y(1) - t;
end
[t,y] = ode23(@(t,y) odefcn3(t,y), [0 2], [1 1]);
plot(t,y,'-o')

%% d
[t,y] = ode23(@(t,y) t-0.1*y^2, [0 2], 1);
plot(t,y,'-o')
sol = [t,y];
x = 0.8;
yx = sol(sol(:,1)==x,2);

%% e
function dydt = odefcn4(y)
    dydt = zeros(2,1);
    dydt(1) = -y(2)/2 + y(1)*y(2)/20;
    dydt(2) = y(1) + y(1)*y(2)/10;
end
[t, y] = ode23(@(t,y) odefcn4(y), [0 2], [1 1]);
plot(t,y,'-o')


%% Question 3
A = [-5 0 -100; 2 -2 0; 0 0.1 -0.08];
B = [0;0;-0.1];
t = [0 8];
u = 0.2;
[t1,y1] = ode45(@(t,y) A*y + B*u, t, [0 0 0]');
[t2,y2] = ode23(@(t,y) A*y + B*u, t, [0 0 0]');
plot(t1,y1,'-o')
hold on
plot(t2,y2,'-x')


%% Question 4
syms y(t) a x(t)
eq1 = diff(y,t) == a*y;
S1 = dsolve(eq1);

eq2 = diff(y,t) == a^2 * y;
S2 = dsolve(eq2, y(0) == 1);

eq3 = diff(y,t) == sin(t);
S3 = dsolve(eq3);

eq4a = diff(y,t) == x;
eq4b = diff(x,t) == y;
S4 = dsolve([eq4a, eq4b]);

eq5a = diff(y,t) == x - 1;
eq5b = diff(x,t) == y - t;
S5 = dsolve([eq5a, eq5b], [x(0) == 1, y(0) == 1]);

eq6 = diff(y,t) == y*(exp(t)-1);
S6 = dsolve(eq6, y(0) == 1);