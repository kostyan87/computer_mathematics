function line_approximation(x, y)

    A = ones(length(x), 2);
    A(1:size(x,2), 1:1) = x';
    B = y';
    
    X = ((A' * A)^(-1) * A'* B)';
    
    line_x = 2:0.01:100;
    plot(line_x, polyval(X, line_x), '-r');
    
    line_approximation_error = get_error(polyval(X, x), y)

end