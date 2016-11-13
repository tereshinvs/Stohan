n = 1000;
p = 0.5;

N = 10000;

hold on;

res = zeros(N, 1);
for i = 1 : N
    res(i) = binom(n, p);
end

[counts, centres] = hist(res, 123);
bar(centres, counts / trapz(centres, counts));

x = 0 : n;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = binom_distribution(n, p, x(i));
end

plot(x, y, 'r');
axis([n*0.4 n*0.6 0 0.04])

xlabel('n');
ylabel('Probability');
