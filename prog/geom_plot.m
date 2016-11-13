p = 0.5;

hold on;

N = 10000;

res = zeros(N, 1);
for i = 1 : N
    res(i) = geom(p);
end

[counts, centres] = hist(res, size(unique(res), 1));
bar(centres, counts / N);%trapz(centres, counts));

x = 0 : 100;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = geom_distribution(p, x(i));
end

plot(x, y, 'r');
axis([0 12 0 0.5])

xlabel('n');
ylabel('Probability');
