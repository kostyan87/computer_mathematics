function draw_graph(polinom, t, n, left_board, right_board, x_max)

    figure;
    ezplot('cos(x)^2 + 0.8*x - sin(x)', [left_board right_board])
    hold on; 
    h = left_board:0.001:right_board;
    f_n = polyval(polinom, h);
    f_t = polyval(polinom, t);
    plot(h, f_n, '-m', t, f_t, 'r*', t, f(t), 'b*'), grid;

    for i = 1:(n+2)
        plot([t(i), t(i)], [f_t(i), f(t(i))], 'Color', 'r', 'LineWidth', 1);
    end

    if (x_max >= left_board)
        plot([x_max, x_max], [f(x_max), polyval(polinom, x_max)], 'Color', 'k', 'LineWidth', 1);
        plot(x_max, f(x_max), 'k*', x_max, polyval(polinom, x_max), 'k*');
    axis tight;
    legend('Исходная функция', 'Полином приближения', 'Location', 'NorthWest');
    refreshdata
    drawnow
end