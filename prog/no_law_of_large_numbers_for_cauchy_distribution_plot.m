Nmax = 1000;
a = 5;
b = 1;

x = 1 : Nmax;
y = zeros(1, Nmax);
for i = 1 : Nmax
    y(i) = cauchy(a, b);
end

for i = 2 : Nmax
    y(i) = y(i - 1) + y(i);
end

for i = 1 : Nmax
    y(i) = y(i) / i;
end

hold on;
plot(x, y);
plot([0 Nmax], [a a], 'r');
xlabel('n');
ylabel('S_n / n');
