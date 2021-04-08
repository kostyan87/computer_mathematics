function theoretical_error = get_theoretical_error(x, left_board, right_board)

    M_5 = 16.711;
    M_12 = 2048;
    %M_5 = 1;
    %M_12 = 1;
    a = left_board;
    b = right_board;
    
    if (length(x) == 5)
        theoretical_error = (M_5 / factorial(5)) * (((b - a)^(5)))/((2^(2*5 - 1)));
    else
        theoretical_error = (M_12 / factorial(12)) * (((b - a)^(12))/(2^(2*12 - 1)));
    end
end