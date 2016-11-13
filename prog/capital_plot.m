lambda = 0.1;
xm = 10;
k = 2;
c = 2;
W0 = 1000;
T = 1000;

t = [random('Exponential', 1/lambda)];
while t(end) <= T
    t = [t; t(end) + random('Exponential', 1/lambda)];
end
t = t(1 : end - 1);
N = size(t, 1);
s = zeros(N, 1);
for i = 1 : N
    s(i) = pareto(xm, k);
end

res = zeros(N, 1);
sum = 0;
for i = 1 : N
    sum = sum + s(i);
    res(i) = W0 + c * t(i) - sum;
end

plot([0; t], [W0; res]);
xlabel('t');
ylabel('Capital');
