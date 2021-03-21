function practical_error = get_practical_error(point, polynom)

    practical_error = abs(polyval(polynom, point) - (cos(point) * cos(point) + 0.8*point - sin(point)));