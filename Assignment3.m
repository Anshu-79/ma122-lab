%% Q-1
A = [31;2;3;44];
B = [12;20;15;74];
C = dot(A,B) % using dot function
C = sum(A .* B) % by summing array products of A & B

%% Q-2
A = [1, 2, 3; 2, 4, 6; 3, 6, 9]; % singular because row 2 is a multiple of row 1
det(A) % the determinant is zero, thus singular

%% Q-3
A = [1 1 1 1; 2 3 1 5; -1 1 -5 3; 3 1 7 -2];
B = [10;31;-2;18];
X = A \ B

A = [3 2 -1; 2 3 1; -1 3 2; 1 -1 -7];
B = [10;31;-2;18];
X = A \ B

%% Q-4
A = [3 2 5; 2 3 -2; 1 1 1; 2 -4 -7];
B = [22;8;6;-27];
X = A \ B

A = [3 2 5; 4 5 -2];
B = [22;8];
X = A \ B


%% Q-5
A = [12 4;3 -5];
B = [2 12; 0 0];
A * B

A = [1, 2, 3; 2, 4, 6];
B = [-2, 4; 3, 8; 12, 2];
A * B

%% Q-6 & 7
A = [-2 1; 1 1];
B = [3;10];
C = [5 3 -1; 3 2 1; 4 -1 3];
D = [10;4;12];
E = [3 2 5 1; 1 -3 7 1; 2 2 -3 4; 1 1 1 1];
F = [24;12;17;0];

tic
X = inv(A) * B;
Y = inv(C) * D; 
Z = inv(E) * F;
toc

tic
X = A \ B;
Y = C \ D;
Z = E \ F;
toc 


%% Q-8
FV = futureVal(1000,0.005,10)


%% Q-9


%% Q-10
height = @(t) -4.9*(t.^2) + 100*t + 250;
t = linspace(1,100);
h = height(t);
plot(t,h)
max(h)
