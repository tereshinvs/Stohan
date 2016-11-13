function result = std_normal_by_von_neumann()
    a = 0;
    b = 1;
    k = sqrt(2 * pi / exp(1));
    
    x = 0;
    y = 0;
    while y == 0
        x = cauchy(a, b);
        y = bernulli(std_normal_distribution(x) / (k * cauchy_distribution(a, b, x)));
    end
    result = x;
end
