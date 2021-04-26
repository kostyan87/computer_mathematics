function left_neigh = get_left_neigh(end_, t, x_max)

    left_neigh = 0;

    for i = 1:end_
        if ((x_max > t(i)) && (x_max < t(i + 1)))
            left_neigh = i;
            break;
        end
    end

end