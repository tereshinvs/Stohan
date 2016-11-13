Nmax = 1000;
mu = 10;
sigma = 1;

x = 1 : Nmax;
y = random('Normal', mu, sigma, 1, Nmax);

for i = 2 : Nmax
    y(i) = y(i - 1) + y(i);
end

for i = 1 : Nmax
    y(i) = y(i) / i;
end

hold on;
plot(x, y);
plot([0 Nmax], [mu mu], 'r');
xlabel('n');
ylabel('S_n / n');
