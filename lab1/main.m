function main(x, fx)

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
    plot(0:0.1:length(x)*2, polyval(newton_interpolation_polynomial, 0:0.1:length(x)*2), 'r*');
    hold on;
    
    % Теоретическая оценка погрешности интерполяции
    theoretical_error = get_theoretical_error(x)
    
    % Практическая оценка погрешности интерполяции
    practical_error = get_practical_error(5, lagrange_interpolation_polynomial)
   
end

%main([0 2 4 6 8 10 12 14 16 18 20 22], [1 0.864 4.384 6.001 5.432 9.248 10.849 10.228 14.005 15.587 15.254 18.609]);
%main([0 2 4 6 8], [1 0.864 4.384 6.001 5.432]);