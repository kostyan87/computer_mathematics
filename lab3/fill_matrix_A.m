function matrix_A = fill_matrix_A(t)

    matrix_A = zeros(length(t), length(t));
    
    for i = 1:length(t)
        for j = 1:length(t)
            if (j == length(t))
                matrix_A(i, j) = (-1)^i;
            else
                matrix_A(i, j) = t(i)^(j-1);
            end
        end
    end

end