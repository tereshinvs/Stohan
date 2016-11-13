N = 1000;

S = zeros(N + 1, 1);
for i = 1 : N
    if bernulli(0.5) == 1
        tmp = 1;
    else
        tmp = -1;
    end
    S(i + 1) = S(i) + tmp;
end

hold on;
plot(0 : N, S ./ sqrt(0 : N)');
plot([0 N], [0 0], 'r');
plot([0 N], [1 1], 'g');
plot([0 N], [-1 -1], 'g');
xlabel('n');
ylabel('S_n');
