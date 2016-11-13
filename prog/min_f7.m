N = 100000000;

f = @f7;

tic();
res = zeros(1, N);
for i = 1 : N
    R = sqrt(rand());
    phi = 2 * pi * rand();
    res(i) = f(R * cos(phi), R * sin(phi));
end

min(res)
toc()

23 * sqrt(0.99 / N)
