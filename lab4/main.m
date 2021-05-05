function main()

    % генерируем точки и рисуем их на графике
    x = generate_x();
    y = generate_y(x);
    draw_dots(x, y);
    
    % генерируем и выводим аппроксимирующие функции и
    % сумму квадратов отклонений каждой аппроксимирующей
    % функции от набора точек
    line_approximation(x, y);
    parabola_approximation(x, y);
    cubic_parabola_approximation(x, y);

end