function newton_interpolation_polynomial = get_newton_interpolation_polynomial(x, fx)
    
    number_of_nodes = length(x);
    newton_interpolation_polynomial = zeros(1, number_of_nodes);
    polynom = [1];
    %order = 1;
    h = 2;
    
    for i = 1:(number_of_nodes - 1)
        
        finished_diff = get_finished_diff(1, fx, i);
        polynom = conv(polynom, [1 -x(i)]);
        denumerator = (h .^ i) * factorial(i);
        
        newton_interpolation_polynomial = poly_sum(newton_interpolation_polynomial ...
            , ((finished_diff * polynom) / denumerator));
        
        %order = order + 1;
    end
    
    newton_interpolation_polynomial = poly_sum(newton_interpolation_polynomial ...
            , fx(1));
end