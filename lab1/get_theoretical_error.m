function theoretical_error = get_theoretical_error(x)

    M_5 = 16.711;
    M_12 = 2048;
    
    if (length(x) == 5)
        theoretical_error = (M_5 * get_max_W_n(x)) / factorial(5);
    else
        theoretical_error = (M_12 * get_max_W_n(x)) / factorial(12);
    end
end