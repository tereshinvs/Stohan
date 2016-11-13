lambda = 5.0;

N = 5000;

hold on;

res = zeros(N, 1);
for i = 1 : N
    res(i) = poisson(lambda);
end

[counts, centres] = hist(res, size(unique(res), 1));
bar(centres, counts / trapz(centres, counts));

x = 0 : 20;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = poisson_distribution(lambda, x(i));
end

plot(x, y, 'r');
axis([0 16 0 0.3])

xlabel('x');
ylabel('Probability');


