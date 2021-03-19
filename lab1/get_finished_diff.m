function finished_diff = get_finished_diff(point_num, fx, order)
    
    if (order == 0)
        finished_diff = fx(point_num);
    else
        finished_diff = get_finished_diff(point_num + 1, fx, order - 1) - get_finished_diff(point_num, fx, order - 1);
    end
end