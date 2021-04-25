function coefficients = get_coefficients(t, f_t)

    matrix_A = fill_matrix_A(t);
    matrix_B = (f(t))';
    
    coefficients = (inv(matrix_A) * matrix_B)'; 

end
