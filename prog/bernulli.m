function result = bernulli(p)
    if rand() < p
        result = 1;
    else
        result = 0;
    end
end
