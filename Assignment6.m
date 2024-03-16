%% Question 1
fact = 1;
N = 5;
while N > 0
    fact = fact * N;
    N = N - 1;
end
%% Question 2
v = zeros(1,10);
for i = 1:10
    v(i) = i^-1;
end
v
%% First 10 natural numbers sum
N = 10;
sum = 0;
for i = 1:N
    sum = sum + i;
end
sum

%% Question 2 WHILE LOOP
v = zeros(1,10);
i = 1;
while i <= 10
    v(i) = i^-1;
    i = i + 1;
end
v

%% Question 3
v = zeros(1,10);
for i = 1:10
    v(i) = (-1)^(i+1) * i^-1;
end
v

%% Question 4
x = 1.5;
sum = 0;
for k = 1:10
end

%% Question 5
N = 20;
sum = 0;
for i = 2:2:N
    sum = sum + i;
end
sum

%% Question 6
v = [35,24,5,6,4,10,23,45,2,79];
sum = 0;
for i = 1:10
    sum = sum + v(i);
end
avg = sum / 10

%% Question 7
v = [35,24,5,6,4,10,23,45,2,79];
sum = 0;
i = 1;
while i <= 10
    sum = sum + v(i);
    i = i + 1;
end
avg = sum / 10

%% Question 8
N = 5;
i = 1;
while i < N
    i^2
    i = i + 1;
end

%% Question 9
q = pi^exp(1) >= exp(1)^pi

%% Question 10
N = 10;
fibo = zeros(1,N);
fibo(1) = 0;
fibo(2) = 1;
for i = 3:N
    fibo(i) = fibo(i-2) + fibo(i-1);
end
fibo

%% Question 11
x = linspace(-1,1);
for i = 1:8
    y = sin(i*x);
    plot(x,y);
    hold on
end

%% Question 12
n = 5;
A = zeros(n);
for i = 1:n
    for j = 1:n
        if i == 1 && j == 1
            A(i,j) = 1;
        elseif i == 2 && (j == 1 || j == 2)
            A(i,j) = 1;
        elseif i == n && (j == n || j == n-1)
            A(i,j) = 1;
        end
    end
end
A
