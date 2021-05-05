function cubic_parabola_approximation(x, y)

    A = ones(length(x), 4);
    A(1:size(x,2), 1:1) = (x.^3)';
    A(1:size(x,2), 2:2) = (x.^2)';
    A(1:size(x,2), 3:3) = x';
    B = y';

    X = ((A' * A)^(-1) * A'* B)';
    
    line_x = 2:0.01:100;
    plot(line_x,polyval(X, line_x), '-g');
    
    cubic_parabola_approximation_error = get_error(polyval(X, x), y)
    
end