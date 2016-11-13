function result = poisson_distribution(lambda, k)
    result = lambda^k / factorial(k) * exp(-lambda);
end
