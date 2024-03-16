%% Question 1
a = -2^3 + 9;
b = 2/3 * 3;
c = 3 * 2/3;
d = 3 * 4 - 5^2 * 2 - 3;
e = 2/3^2 * (3-4^3)^2;
f = 3 * (3*4 - 2*5^2-3);

%% Question 2
a = (2 + 6i)/(9i * (1+1i));
abs(a)
angle(a)

%% Question 3
A = [2, 4, 1; 6, 7, 2; 3, 5, 9];
x = A(1,:);
y = A(2:3,:);
sum = sum(A);

%% Question 4
X = [3,2,6,8]';
Y = [4,1,3,5]';
X+Y;

%% Question 5
A = [1, 2, 3, 4; 5, 6, 7, 8; 1, 1, 2, 3];

% (a)
B = A(1:2,2:4);

% (b)
row3 = A(3,:);
A(3,:) = A(1,:);
A(1,:) = row3;

% (c)
A(:); % It prints all the elements of A column-wise

% (d)
A(:,2) = [];
A(3,:) = [];

% (e)
A(:,2) = [];

%% Question 6
a = [2, -1, 5, 0];
b = [3, 2, -1, 4];
c = a - b;
c = a - 3*b;
c = 2 * a + a.^b;
c = b./a;
c = b .* a;
c = 2 * b/3 .* a;
c = b * 2 .* a;

%% Question 7
[x,y,z] = meshgrid(-8:0.5:8, 0:3:6, 0:3:6);
r = sqrt(x.^2 + y.^2 + z.^2) + eps;
z = sin(r) ./ r;
mesh(z);

%% Question 8

% (2(3 + 4)/(5 ∗ (6 + 1))2 should be expressed as
(2 * (3+4) / (5 * (6 + 1)))^2

%% Question 9
v1 = [2 3 -1];
v1 + 1;

v2 = [1 4 8];
v2 .* 3;

v3 = [1 2 3];
v4 = [0 -1 1];
v3 .* v4;

v5 = [2 3 1];
v5 .^ 2;
