n = 100;
N = 100;
x = -5 : 0.1 : 5;

y = zeros(1, size(x, 2));
for i = 1 : size(x, 2)
    y(i) = 0;
    for j = 1 : N
        xn = rand(n, 1);
        if (sum(xn) - 0.5 * n) / sqrt(1/12 * n) <= x(i)
            y(i) = y(i) + 1;
        end
    end
    y(i) = y(i) / N;
end

hold on;
bar(x, y);

yn = zeros(1, size(x, 2));
for i = 2 : size(x, 2)
    tmp = exp(-x(1 : i).^2 / 2)
    yn(i) = 1/sqrt(2 * pi) * trapz(x(1 : i), tmp);
end

plot(x, yn, 'Color', 'r', 'LineWidth', 2);
