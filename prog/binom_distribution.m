function result = binom_distribution(n, p, k)
    result = nchoosek(n, k) * p^k * (1-p)^(n-k);
end
