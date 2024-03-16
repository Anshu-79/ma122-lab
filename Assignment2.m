
%% Question 1
A = rand(3,3);
B = [A(2,:);A(2,:);A(3,:);A(3,:)];
B(2,:) = [];
B(1:2, 1:2);

%% Question 2
A = rand(3,3);
B = rand(3,3);
A + B;
A - B;
A * B;
A .* B;

%% Question 3
A = [2, 4, 1; 6, 7, 2; 3, 5, 9];
B = [7, 5, 6; 2, 0, 8; 5, 7, 1];
A ./ B;
A .\ B;

%% Question 4
A = [10, 12, 23; 14, 8, 6; 27, 8, 9];
b = 5;
b + A;
b - A;
A / b;
A * b;

%% Question 5
A = [10, 12, 23; 14, 8, 6; 27, 8, 9];
B = [12, 31, 45; 8, 0, -9; 45, 2, 11];
C = horzcat(A,B);
D = vertcat(A,B);

%% Question 6
I = eye(3,3);
O = zeros(3,3);
R = rand(3,3);
M = magic(3);

%% Question 7
A = rand(2,2);
A = vertcat(A,zeros(1,2));
A = horzcat(A, zeros(3,1));

%% Question 8
a = 3;
b = 4;
a == b
a >= b
a > b
a <= b
a < b
a ~= b

a = 10;
b = 5;
a == b
a >= b
a > b
a <= b
a < b
a ~= b

%% Question 9
a = 10;
b = 0;
a & b;
a | b;
~a;
~b;
a = 2;
b = 5;
a & b;
a | b;
~a;
~b;

%% Question 10
(2+3 == 5) | (3 > 7)
(4+5 == 3) & (4 == 4)
~(7 > 3)

%% Question 11
tic
v = linspace(1,2);
toc
