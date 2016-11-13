function result = singular()
    result = 0;
    for i = 1 : 20
        result = result + 2 * bernulli(0.5) / 3^i;
    end
end
