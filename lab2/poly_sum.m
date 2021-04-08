function s = poly_sum(p, q)
    max_len = max(length(p), length(q));
    p1 = zeros(1, max_len);
    q1 = zeros(1, max_len);
    p1(max_len - length(p) + 1: max_len) = p;
    q1(max_len - length(q) + 1: max_len) = q;
    s = p1 + q1;