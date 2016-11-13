lambda = 0.1;
xm = 10;
k = 2;
c = 2;
W0 = 1000;
N = 200;
MAX = 10000;

res = [];
for i = 1 : N
    sum = 0;
    lastt = 0;
    count = 0;
    while count < MAX
        count = count + 1;
        lastt = lastt + random('Exponential', 1/lambda);
        sum = sum + pareto(xm, k);
        if W0 + c * lastt - sum < 0
            break;
        end
    end
    i
    count
    res = [res; lastt];
end

[counts, centres] = hist(res, 20);
bar(centres, counts / size(res, 1));
xlabel('t');
ylabel('Probability');
