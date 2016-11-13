lambda = 1.0;

N = 100000;

hold on;

res = zeros(N, 1);
for i = 1 : N
    res(i) = exponential(lambda);
end

[counts, centres] = hist(res, 50);
bar(centres, counts / trapz(centres, counts));

x = 0 : 0.1 : 10;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = exponential_distribution(lambda, x(i));
end

plot(x, y, 'r');
axis([0 10 0 1])

xlabel('x');
ylabel('Probability');

