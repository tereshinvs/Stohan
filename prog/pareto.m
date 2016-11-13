function result = pareto(xm, k)
    result = xm * (1 - rand())^(-1/k);
end
