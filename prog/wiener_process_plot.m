N = 10;

t = [0; 1];
x = [0; random('Normal', 0, 1)];

queue = [t(1) x(1); t(2) x(2)];
cur = 1;

while size(t, 1) <= 2^(N+1)
    t0 = queue(cur, 1);
    t1 = queue(cur + 1, 1);
    x0 = queue(cur, 2);
    x1 = queue(cur + 1, 2);
    
    tt = (t0 + t1) / 2;
    xt = (x0 + x1) / 2;
    newx = random('Normal', xt, sqrt((t1-t0)/4));
    
    t = [t; tt];
    x = [x; newx];
    
    cur = cur + 2;
    queue = [queue; t0 x0; tt newx; tt newx; t1 x1];
end

tmp = sortrows([t x]);
plot(tmp(:, 1), tmp(:, 2));

xlabel('t');
ylabel('W_t');
