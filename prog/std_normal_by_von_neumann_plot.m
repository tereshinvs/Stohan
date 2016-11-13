hold on;

N = 10000;

res = zeros(N, 1);
for i = 1 : N
    res(i) = std_normal_by_von_neumann();
end

[counts, centres] = hist(res, 70);
bar(centres, counts / trapz(centres, counts));

x = -5 : 0.1 : 5;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = std_normal_distribution(x(i));
end

plot(x, y, 'r');
axis([-7 7 0 0.5])

xlabel('n');
ylabel('Probability');


