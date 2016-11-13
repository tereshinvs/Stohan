N = 1000000;

gamma = 0.01;

tic();
S = 0.0;
sigma1 = 0.0;
sigma2 = 0.0;
for i = 1 : N
    if mod(i, 20000) == 0
        i
    end
    x = random('Normal', 0, sqrt(0.5), 1, 10);
    fx = f(x);
    S = S + fx;
    sigma1 = sigma1 + fx^2;
    sigma2 = sigma2 + fx;
end
S = S / N
D = sigma1 / N - 2 * sigma2 * S / N + S^2
eps = sqrt(D / (gamma * N))
toc()
