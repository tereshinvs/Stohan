function result = geom(p)
    result = 0;
    while bernulli(p) == 0
        result = result + 1;
    end
end
