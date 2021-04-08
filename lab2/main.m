function main(n, left_board, right_board)

    % Найдем оптимальные узлы для интерполяции
    x = get_nodes(n, right_board, left_board)
    
    % Найдем значения в оптимальных узлах для интерполяции
    fx = cos(x).*cos(x) + 0.8*x - sin(x)
    %fx = sin(x)

    % Интерполяционный многочлен Лагранжа
    lagrange_interpolation_polynomial = get_lagrange_interpolation_polynomial(x, fx)

    % Рисуем графики
    h = 0:0.001:length(x)*2;
    h1 = 0:0.1:length(x)*2;
    % График функции
    ezplot('(cos(x))^2 + 0.8*x - (sin(x))', [0 length(x)*2]), grid
    %ezplot('sin(x)', [0 length(x)*2]), grid
    hold on;
    % Полином Лагранжа
    plot(h, polyval(lagrange_interpolation_polynomial, h));
    hold on;
    plot(h1, polyval(lagrange_interpolation_polynomial, h1), 'r*');
    hold on;
    
    % Теоретическая оценка погрешности интерполяции
    theoretical_error = get_theoretical_error(x, left_board, right_board)
    
    % Практическая оценка погрешности интерполяции
    practical_error = get_practical_error(1, lagrange_interpolation_polynomial)
   
end