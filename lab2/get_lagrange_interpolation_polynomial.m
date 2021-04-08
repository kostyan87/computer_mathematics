function lagrange_interpolation_polynomial = get_lagrange_interpolation_polynomial(x, fx)

    number_of_nodes = length(x);
    lagrange_interpolation_polynomial = zeros(1, number_of_nodes);
    
    for i = 1:number_of_nodes
        numerator = [1];
        denumerator = 1;
        for j = 1:number_of_nodes
            if (i ~= j)
                numerator = conv(numerator, [1 -x(j)]);
                denumerator = denumerator * (x(i) - x(j));
            end
        end
        lagrange_interpolation_polynomial = lagrange_interpolation_polynomial ...
            + ((fx(i) * numerator) / denumerator);
    end