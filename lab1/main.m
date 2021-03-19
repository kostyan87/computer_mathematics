function main(x, fx)
    
    % Теоретическая погрешность интерполяции
    % theoretical_error = get_theoretical_error()

    % Интерполяционный многочлен Лагранжа
    lagrange_interpolation_polynomial = get_lagrange_interpolation_polynomial(x, fx)

    % Интерполяционный многочлен Ньютона
    newton_interpolation_polynomial = get_newton_interpolation_polynomial(x, fx)

    % Рисуем графики
    h = 0:0.001:length(x)*2;
    % График функции
    ezplot('(cos(x))^2 + 0.8*x - (sin(x))', [0 length(x)*2]), grid
    hold on;
    % Полином Лагранжа
    plot(h, polyval(lagrange_interpolation_polynomial, h));
    hold on;
    % Полином Ньютона
    plot(h, polyval(newton_interpolation_polynomial, h), 'r*');
    hold on;
    
    % Теоретическая оценка погрешности интерполяции
    theoretical_error

    % Сравнение полученной погрешности интерполяции с теоретической
   
end

%main([0 2 4 6 8 10 12 14 16 18 20 22], [1 0.864 4.384 6.001 5.432 9.248 10.849 10.228 14.005 15.587 15.254 18.609]);
%main([0 2 4 6 8], [1 0.864 4.384 6.001 5.432]);