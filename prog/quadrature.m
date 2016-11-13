N = 6;

tic();
t = (1 : (N - 1)) / N;
S = 0.0;
for i1 = t
    for i2 = t
        for i3 = t
            for i4 = t
                for i5 = t
                    for i6 = t
                        for i7 = t
                            for i8 = t
                                for i9 = t
                                    for i10 = t
                                        S = S + f_quadrature([i1, i2, i3, i4, i5, i6, i7, i8, i9, i10]);
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
S = S * 2^10 / N^10
toc()
