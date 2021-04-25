% t - начальный массив точек
% left_board, right_board - границы интервала для интерполяции
% f(x) - интерполируемая функция
function remez_algo(t, left_board, right_board)

    % n - степень интерполяционного полинома
    n = length(t) - 1;
    epsilon = 0.00001;
    number_of_step = 0;
    
    while true
       
        % Решение системы уравнений (находим p(0), p(1) ... p(n) и сигму)
        % Решаем матричным методом AX=B => X=A^(-1)B
        coefficients = get_coefficients(t, f(t))
        
        % Поиск x_max
        
        % Рисуем график
        draw_graph(polinom, t, x_max, left_board, right_board);
        
        % Ищем ближайшую t(i) к x_max и меняем ее на x_max
        
        % Проверяем разницу между сигмой и эпсилон
        
    end

end