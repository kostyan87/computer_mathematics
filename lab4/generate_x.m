function x = generate_x()

    x = rand(1, 50) * 100;
    
    % точки с одинаковым x
    x = [x x(5) x(2) x(1)];
    
    x = sort(x);

end