function result = binom(n, p)
    result = 0;
    for i = 1 : n
        result = result + bernulli(p);
    end
end
