clear

N_EPS = 20;

EPS = 1/N_EPS;

%x = -1 : (1/N_EPS) : 1;
%y = -1 : EPS : 1;
x = zeros(2 * N_EPS + 1, 2 * N_EPS + 1);
y = zeros(2 * N_EPS + 1, 2 * N_EPS + 1);
for i = 1 : (2 * N_EPS + 1)
    x(i, :) = (-1 + (i-1)/N_EPS) * ones(1, 2 * N_EPS + 1);
    tmp = sqrt(1 - (-1 + (i-1)/N_EPS)^2);
    for j = 1 : (2 * N_EPS + 1)
        y(i, j) = -tmp + (j - 1) * tmp / N_EPS;
    end
end

field = zeros(size(x, 1), size(x, 2));

for i = 1 : size(x, 1)
    for j = 1 : size(x, 2)
            field(i, j) = 0.5 * (1 + x(i, j)^2 - y(i, j)^2);
    end
end

surf(x, y, field);
