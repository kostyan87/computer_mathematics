function main(x, fx)
    
    % Теоретическая погрешность интерполяции
    % theoretical_error = get_theoretical_error()

    % Интерполяционный многочлен Лагранжа
    lagrange_interpolation_polynomial = get_lagrange_interpolation_polynomial(x, fx)

    % Интерполяционный многочлен Ньютона
    newton_interpolation_polynomial = get_newton_interpolation_polynomial(x, fx)

    % Разница между многочленом Ньютона и Лагранжа
    % ...график...

    % Сравнение полученной погрешности интерполяции с теоретической
   
end

%main([0 2 4 6 8 10 12 14 16 18 20 22], [1 0.864 4.384 6.001 5.432 9.248 10.849 10.228 14.005 15.587 15.254 18.609]);
%main([0 2 4 6 8], [1 0.864 4.384 6.001 5.432]);