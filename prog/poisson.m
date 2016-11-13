function result = poisson(lambda)
    result = -1;
    sum = 0;
    while sum < 1
        result = result + 1;
        sum = sum + exponential(lambda);
    end
end
