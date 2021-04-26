% t - начальный массив точек
% left_board, right_board - границы интервала для интерполяции
% f(x) - интерполируемая функция
function remez_algo(t, left_board, right_board)

    % n - степень интерполяционного полинома
    n = length(t) - 2;
    epsilon = 0.00001;
    number_of_step = 0;
    
    while true
       
        % Решение системы уравнений (находим p(0), p(1) ... p(n) и сигму)
        % Решаем матричным методом AX=B => X=A^(-1)B
        coefficients = get_coefficients(t, f(t));
        number_of_step = number_of_step + 1;
        
        % Сохраняем значения сигмы
        if (number_of_step == 1)
            sigma_last = coefficients(length(coefficients))
            x_sigma = number_of_step;
            y_sigma = abs(sigma_last);
        else
            sigma_current = coefficients(length(coefficients))
            x_sigma = [x_sigma number_of_step];
            y_sigma = [y_sigma abs(sigma_current)];
        end
            
        polynom = fliplr(coefficients);
        polynom(1) = [];
        
        % Поиск x_max
        x_max = get_x_max(polynom, left_board, right_board);
        
        % Рисуем график
        draw_graph(polynom, t, n, left_board, right_board, x_max);
        
        % Ищем ближайшие t(i) и t(i + 1) к x_max
        left_neigh_index = get_left_neigh(length(t) - 1, t, x_max);
        
        if (left_neigh_index == 0)
            % x_max или правее всех узлов или левее
            if (x_max > t(length(t)))
                % x_max правее всех
                if ((f(t(length(t))) - polyval(polynom, t(length(t)))) * (f(x_max) - polyval(polynom, x_max)) > 0)
                    t(length(t)) = x_max;
                else
                    t(length(t) + 1) = x_max;
                    t(1) = [];
                end
            else
                % x_max левее всех
                if ((f(t(1)) - polyval(polynom, t(1))) * (f(x_max) - polyval(polynom, x_max)) > 0)
                    t(1) = x_max;
                else
                    t = [x_max t];
                    t(length(t)) = [];
                end
            end
        else
            % x_max находится между узлами
            if ((f(t(left_neigh_index)) - polyval(polynom, t(left_neigh_index))) * (f(x_max) - polyval(polynom, x_max)) > 0)
                t(left_neigh_index) = x_max;
            else
                t(left_neigh_index + 1) = x_max;
            end
        end
        
        % Проверяем разницу между сигмой и эпсилон
        if (number_of_step > 1)
            if (abs(sigma_current - sigma_last) < epsilon)
                break;
            end
            sigma_last = sigma_current;
        end
    end

    draw_sigmas_graph(x_sigma, y_sigma, number_of_step);
    
end