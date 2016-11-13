N = 10000;

res_plus = zeros(N, 1);
for i = 1 : N
    res_plus(i) = singular();
end

res_minus = zeros(N, 1);
for i = 1 : N
    res_minus(i) = 1 - singular();
end

x = 0 : 0.01 : 1;
[y_plus] = histc(res_plus, x);
[y_minus] = histc(res_minus, x);
y_plus = y_plus / N;
y_minus = y_minus / N;
for i = 2 : size(y_plus, 1)
    y_plus(i) = y_plus(i - 1) + y_plus(i);
    y_minus(i) = y_minus(i - 1) + y_minus(i);
end
y_plus(1) = 0;
y_minus(1) = 0;
y_plus(end) = 1;
y_minus(end) = 1;

hold on;
plot(x, y_plus, 'b');
plot(x, y_minus, 'r');
xlabel('x');
ylabel('Probability');
