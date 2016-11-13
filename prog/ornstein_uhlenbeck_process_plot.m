N = 10;
T = 1;
a = 5;
lambda = 5;
sigma = 5;

t = [0; T];
x0 = random('Normal', a, sigma);
x = [x0; random('Normal', x0 * exp(-lambda * T), sqrt(sigma^2 * (1 - exp(-2 * lambda * T))))];

queue = [t(1) x(1); t(2) x(2)];
cur = 1;

while size(t, 1) <= 2^(N+1)
    t0 = queue(cur, 1);
    t1 = queue(cur + 1, 1);
    x0 = queue(cur, 2);
    x1 = queue(cur + 1, 2);
    
    tt = (t0 + t1) / 2;
    newx = random('Normal', (x0 + x1) * (exp(-lambda * (t1 - t0) / 2)) / (1 + exp(-lambda * (t1 - t0))), ...
        sqrt(sigma^2 * (1 - exp(-lambda * (t1 - t0))) / (1 + exp(-lambda * (t1 - t0)))));
    
    t = [t; tt];
    x = [x; newx];
    
    cur = cur + 2;
    queue = [queue; t0 x0; tt newx; tt newx; t1 x1];
end

tmp = sortrows([t x]);
plot(tmp(:, 1), tmp(:, 2));

xlabel('t');
ylabel('X_t');
