function result = f_quadrature(x)
    x = pi / 2 * x;
    result = pi^10 / 2^10 * exp(-sum(tan(x).^2) - 1 / (2^7 * prod(tan(x))^2)) / prod(sin(x))^2;
end
