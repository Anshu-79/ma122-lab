%% Question 1
syms x a b c d X
ex1 = x^2 - 1;
ex2 = a*x^3 + b*x^2 + c*x + d;
ex3 = sin(x);
eq1 = x^2 == 1;
eq2 = a*x^2 + b*x + c == 0;
eq3 = (X + 1)^2 == 0;
a = sym('6/5') + sym('4/3'); % Symbolic Computation
a = 6/5 + 4/3; % Numerical Computation

%% Question 2
y1 = ex1 * ex2;
y2 = ex1 / ex2;

[n1,d1] = numden(y1);
[n2,d2] = numden(y2);

F1 = factor(y1);
F2 = factor(y2);

E1 = expand(y1);
E2 = expand(y2);

C1 = collect(y1);
C2 = collect(y2);

S1 = simplify(y1);
S2 = simplify(y2);


%% Question 3
syms x y z
equ1 = 5 * x + 6 * y - 3 * z == 10;
equ2 = 3 * x - 3 * y + 2 * z == 14;
equ3 = 28*x - 4 * y - 12 * z == 24;

solve([equ1,equ2,equ3],[x,y,z])

%% Question 4
solve(eq1)
solve(eq2)
solve(eq3)

%% Question 5
subs(ex1,4)
subs(ex2,4)
subs(ex3,4)
subs(eq1,4)
subs(eq2,4)
subs(eq3,4)

%% Question 6
syms x
g(x) = x^2 + sin(x)*x;

subs(g,sym('a'))
subs(g,3)
subs(g,1:5)

%% Question 7
syms t x y
ezplot(cos(x))
ezplot(x^2 - y^4 == 5);

x = sin(t);
y = 3*cos(t);
ezplot(x,y)


%% Question 8
syms x
diff(x^2+x+1);
diff(sin(x));
diff(log(x));
diff(tan(x));

%% Question 9
syms x a b c y
diff(a*x^2 + b*x + c, x);
diff(sin(x*y));
diff(x^0.5 - 3*y);
diff(tan(x+y));

%% Question 10
syms x t
int(3*x^3 - 5*x^2 + 3, x);
int(4*x^3 + cos(2*x) + 3, x);
int(4*exp(-x*t) + sin(3*t), x);
int(sin(3*x) + x*cos(x),x);

%% Question 11
syms x t
int(3*x^3 - 5*x^2 + 3, 3, 5);
int(9*x*exp(x), 0, 5);
int(4*exp(-1*x*t) + sin(3*t), 0, pi);
int(sin(3*t) + x*cos(x), 0, pi);