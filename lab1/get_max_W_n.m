function max_W_n = get_max_W_n(x)

    h = 0:0.01:x(length(x));

    W_n = ones(1, 1);
    
    for i = 1:length(x)
        W_n = conv(W_n, [1 -x(i)]);
    end
    
    max_W_n = max(abs(polyval(W_n, h)));
end