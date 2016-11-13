clear

a = 2;
b = 1;

hold on;

N = 1000;

res = zeros(1, N);
for i = 1 : N
    res(i) = cauchy(a, b);
end
%sort(res)

[counts, centres] = hist(res);
bar(centres, counts / trapz(centres, counts));

x = -7 : 0.1 : 7;
y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = cauchy_distribution(a, b, x(i));
end

plot(x, y, 'r');
axis([-7 7 0 0.5])

xlabel('n');
ylabel('Probability');


