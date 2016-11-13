N = 100000;

res_div = zeros(N, 1);
for i = 1 : N
    res_div(i) = singular();
end
res_div = res_div / 3;

res_con = [];
while size(res_con, 1) < N
    tmp = singular();
    if tmp <= 1/3
        res_con = [res_con; tmp];
    end
end

x = 0 : 0.001 : (1/3 + 0.001);
[y_div] = histc(res_div, x);
[y_con] = histc(res_con, x);
y_div = y_div / N;
y_con = y_con / N;
for i = 2 : size(y_div, 1)
    y_div(i) = y_div(i - 1) + y_div(i);
    y_con(i) = y_con(i - 1) + y_con(i);
end
y_div(1) = 0;
y_con(1) = 0;
y_div(end) = 1;
y_con(end) = 1;

hold on
plot(x, y_div, 'r');
plot(x, y_con, 'b');
xlabel('x');
ylabel('Probability');
axis([0 (1/3) 0 1]);
