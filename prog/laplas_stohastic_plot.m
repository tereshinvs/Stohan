clear

N_EPS = 20;
N = 100;

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
        for q = 1 : N
            curx = x(i, j);
            cury = y(i, j);
            while true
                if (curx - EPS)^2 + cury^2 >= 1 || ...
                    (curx + EPS)^2 + cury^2 >= 1 || ...
                    curx^2 + (cury - EPS)^2 >= 1 || ...
                    curx^2 + (cury + EPS)^2 >= 1
                    break;
                end
                tmp = rand();
                if tmp < 0.25
                    curx = curx - EPS;
                elseif tmp < 0.5
                    cury = cury - EPS;
                elseif tmp < 0.75
                    curx = curx + EPS;
                else
                    cury = cury + EPS;
                end
            end
            field(i, j) = field(i, j) + curx^2;
        end
        field(i, j) = field(i, j) / N;
    end
end

surf(x, y, field);
