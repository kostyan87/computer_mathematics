function draw_sigmas_graph(x_sigma, y_sigma, number_of_step)

    figure;
    plot(x_sigma, y_sigma, 'k*');
    line(x_sigma, y_sigma);
    xticks(1:1:number_of_step);
    axis tight;
    legend('Значение сигмы на каждом шаге алгоритма Ремеза', 'Location', 'SouthEast');
    xlabel('step №');
    ylabel('sigma');

end