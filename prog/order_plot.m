lambda = 0.1;
T = 100000;

t = [random('Exponential', 1/lambda)];
while t(end) <= T
    t = [t; t(end) + random('Exponential', 1/lambda)];
end
t = t(1 : end - 1);
N = size(t, 1);
s = random('Chisquare', 10, N, 1);

Q = [t(1) + s(1); zeros(N - 1, 1)];
for i = 2 : N
    if Q(i - 1) < t(i)
        Q(i) = t(i) + s(i);
    else
        Q(i) = Q(i - 1) + s(i);
    end
end

res = zeros(N, 1);
for i = 1 : N
    for j = 1 : i - 1
        if Q(j) > t(i)
            res(i) = res(i) + 1;
        end
    end
end

plot(t, res);
xlabel('t');
ylabel('Queue size');
