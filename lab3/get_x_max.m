function x_max = get_x_max(polynom, left_board, right_board)

    x_max = left_board;
    max_difference = 0;
    
    for step = left_board:0.001:right_board
        if(abs(f(step) - polyval(polynom, step)) > max_difference)
            max_difference = abs(f(step) - polyval(polynom, step));
            x_max = step;
        end
    end
    
end