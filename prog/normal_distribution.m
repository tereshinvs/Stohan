function result = normal_distribution(mu, sigma, x)
    result = 1.0 / (sigma * sqrt(2 * pi)) * exp(-(x - mu)^2 / (2 * sigma^2));
end
