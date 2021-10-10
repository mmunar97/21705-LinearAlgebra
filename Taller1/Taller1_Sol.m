A = [-1 0 -1 4; 4 -1 0 -1; -1 4 -1 0; 0 -1 4 -1];
b = [35; 25; 15; 25];

disp("La solucion usando el metodo de la matriz inversa es")
disp(inv(A)*b)

[A_triu, b_triu] = gauss_solver(A, b);

disp("La solucion usando el metodo de la matriz inversa con el sistema equivalente de Gauss es")
disp(inv(A_triu)*b_triu)

solution = upper_triangular_solver(A_triu, b_triu);

disp("La solucion resolviendo el sistema triangular superior es")
disp(solution)
