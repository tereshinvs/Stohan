p = 0.5;
n = 3;
m = 5;

hold on;

N = 10000;

res1 = zeros(N, 1);
for i = 1 : N
    res1(i) = geom_conditional(p, m);
end
res1 = res1(res1 > (m + n));

[counts, centres] = hist(res1, size(unique(res1), 1));
bar(centres, counts / size(res1, 1));

res2 = zeros(N, 1);
for i = 1 : N
    res2(i) = geom_conditional(p, n + 1);
end

[counts, centres] = hist(res2, size(unique(res2), 1));
bar(centres, counts / N, 'r');

axis([0 20 0 1])

xlabel('n');
ylabel('Probability');
