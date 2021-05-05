function err = get_error(y, real_y)

    err = 0;

    for i = 1:length(y)
        err = err + (real_y(i) - y(i)) ^ 2;
    end

end