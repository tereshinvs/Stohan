lambda = 1;
N = 50;
n = 100;
last = 100;

critical = 34.76425;

res = zeros(last, 1);
for i = 1 : last
    tmp = zeros(N, 1);
    for j = 1 : N
        tmp(j) = poisson_alternative(lambda, n);
    end
    
    tmp_unique = unique(tmp);
    counts = histc(tmp, tmp_unique);
    
    res(i) = 0;
    for j = 1 : size(tmp_unique, 1)
        pj = poisson_distribution(lambda, tmp_unique(j));
        res(i) = res(i) + N * (counts(j) / N - pj)^2 / pj;
    end
end

hold on;
plot(1 : 100, res);
plot([0 100], [critical critical], 'r');
axis([0 100 0 40]);
xlabel('n');
ylabel('X^2');
