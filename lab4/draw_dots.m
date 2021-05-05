function draw_dots(x, y)

    ezplot('cos(x) * cos(x) + 0.8 * x - sin(x)', [0 100])
    hold on;
    plot(x, y, 'k*');
    axis auto;

end