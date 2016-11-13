function result = exponential_distribution(lambda, x)
    if x < 0
        result = 0;
    else
        result = lambda * exp(-lambda * x);
    end
end
