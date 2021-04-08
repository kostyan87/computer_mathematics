function nodes = get_nodes(n, right_board, left_board)

    nodes = zeros(1, n);
    a = left_board;
    b = right_board;

    for k = 0:(n - 1)
        t = cos((0.5*pi + pi*k) / n);
        nodes(k+1) = 0.5 * ((b - a) * t + b + a);
    end
end