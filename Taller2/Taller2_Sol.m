%%%%%%%%%%%%%%%%%%%%% EJERCICIO 1 %%%%%%%%%%%%%%%%%%%%%

A = [1 3 0 9; 3 9 1 3; 6 3 1 3; 2 5 2 7];
b = [1; 2; 3; 4];

[A_gpc, b_gpc] = gauss_column_pivoting_solver(A, b);
sol_gpc = upper_triangular_solver(A_gpc, b_gpc);

disp("Apartado 1A. Con Gauss con pivotaje por columnas, el sistema equivalente es")
disp(A_gpc)
disp(b_gpc)

disp("Apartado 1A. Las soluciones son")
disp(sol_gpc)


[A_g, b_g] = gauss_solver(A, b);
sol_g = upper_triangular_solver(A_g, b_g);

disp("Apartado 1B. Con Gauss, el sistema equivalente es")
disp(A_g)
disp(b_g)

disp("Apartado 1B. Las soluciones son")
disp(sol_g)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%% EJERCICIO 2 %%%%%%%%%%%%%%%%%%%%%

A = [1/100 (1/100)**2 (1/100)**3 1; 1/10 (1/10)**2 (1/10)**3 1; 1 1 1 1; 12 12**2 12**3 1];
b = [1; 5; 8; 3];

[A_gpc, b_gpc] = gauss_column_pivoting_solver(A, b);
sol_gpc = upper_triangular_solver(A_gpc, b_gpc);

disp("Apartado 2A. Con Gauss con pivotaje por columnas, el sistema equivalente es")
disp(A_gpc)
disp(b_gpc)

disp("Apartado 2A. Las soluciones son")
disp(sol_gpc)

[A_g, b_g] = gauss_solver(A, b);
sol_g = upper_triangular_solver(A_g, b_g);

disp("Apartado 2B. Con Gauss, el sistema equivalente es")
disp(A_g)
disp(b_g)

disp("Apartado 2B. Las soluciones son")
disp(sol_g)

real_solution = [6279377945/127128771; -5764183750/127128771; 436925000/127128771; 21636991/42376257];
disp("Apartado 2C. Las soluciones exactas son")
disp(real_solution)

[abs_error_gpc, rel_error_gpc] = compute_errors(real_solution, sol_gpc);
[abs_error_g, rel_error_g] = compute_errors(real_solution, sol_g);

disp("Apartado 2C. El error absoluto con Gauss con pivotaje por columnas es")
disp(abs_error_gpc)

disp("Apartado 2C. El error absoluto con Gauss es")
disp(abs_error_g)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
