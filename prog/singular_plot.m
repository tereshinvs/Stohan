N = 100000;

res = zeros(N, 1);
for i = 1 : N
    res(i) = singular();
end

x = 0 : 0.01 : 1;
[y] = histc(res, x);
y = y / N;
for i = 2 : size(y, 1)
    y(i) = y(i - 1) + y(i);
end
y(1) = 0;

plot(x, y);
xlabel('x');
ylabel('Probability');
