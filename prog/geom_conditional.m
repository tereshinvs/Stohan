function result = geom_conditional(p, m)
    result = geom(p);
    while result < m
        result = geom(p);
    end
end
