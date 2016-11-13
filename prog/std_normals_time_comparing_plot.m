hold on;

Nmax = 400;
times = 1 : 5 : Nmax;

t_normal = zeros(1, size(times, 2));
t_neumann = zeros(1, size(times, 2));
for j = 1 : size(times, 2)
    N = times(j);
    tic();
    for i = 1 : N
        std_normal();
    end
    t_normal(j) = toc();

    tic();
    for i = 1 : N
        std_normal_by_von_neumann();
    end
    t_neumann(j) = toc();
end

plot(times, t_normal);
plot(times, t_neumann, 'r');
