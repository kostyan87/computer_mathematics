function y = generate_y(x)

    y = zeros(53, 0);

    for i = 1:53
        if (rand(1) > 0.5)
            y(i) = -(f(x(i)) + rand(1)*100);
        else
            y(i) = (f(x(i)) + rand(1)*100);
        end
    end

end