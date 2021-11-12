disp("SOLUCIONES DEL TALLER 3 - 11/10/2021")

%%%%%%%%%%%%%%%% EXERCISE 1 %%%%%%%%%%%%%%%%%
disp("EJERCICIO 1")
disp("\n")

initial_vector_1 = [5/2; 7/3; 11/4];
vandermonde_1 = generate_vandermonde_matrix(initial_vector_1);
disp("Apartado 1A. Matriz de Vandermonde.")
disp(vandermonde_1)
disp("\n\n")

independent_vector_1 = [1; 2; 3];

real_solution_1 = [168/5; -842/5; 212];

% Solving the linear equation
[system_gauss, independent_gauss] = gauss_solver(vandermonde_1, independent_vector_1);
solution_gauss_1 = upper_triangular_solver(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_1, solution_gauss_1);


disp("Apartado 1A. Matriz de Gauss triangular superior:")
disp(system_gauss)
disp("Apartado 1A. Termino independiente de Gauss:")
disp(independent_gauss)

disp("\n")

disp("Apartado 1A. Solucion con Gauss:")
disp(solution_gauss_1)
disp("Apartado 1C. Error absoluto con Gauss:")
disp(abs_error_gauss)
disp("Apartado 1C. Error relativo con Gauss:")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = gauss_column_pivoting_solver(vandermonde_1, independent_vector_1);
solution_pivoting_1 = upper_triangular_solver(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_1, solution_pivoting_1);

disp("Apartado 1B. Matriz de GPC triangular superior:")
disp(system_pivoting)
disp("Apartado 1B. Termino independiente de GPC:")
disp(independent_pivoting)
disp("\n")

disp("Apartado 1B. Solucion con GPC:")
disp(solution_pivoting_1)
disp("Apartado 1C. Error absoluto con GPC:")
disp(abs_error_pivoting)
disp("Apartado 1C. Error relativo con GPC:")
disp(rel_error_pivoting)
disp("\n")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%% EXERCISE 2 %%%%%%%%%%%%%%%%%
disp("EJERCICIO 2")
disp("\n")

initial_vector_2 = [5/2; 7/3; 11/4; 13/5; 17/6; 19/7; 23/8; 29/9];
vandermonde_2 = generate_vandermonde_matrix(initial_vector_2);
disp("Apartado 2A. Matriz de Vandermonde.")
disp(vandermonde_2)
disp("\n\n")

independent_vector_2 = [1; 2; 3; 4; 5; 6; 7; 8];

real_solution_2 = [313592014347/340340; 
                   -457459856945933/25989600;
                   493563948366959513/3430627200; 
                   -197436771134498893/302702400; 
                   24307645219148215987/13722508800; 
                   -23727434239811381423/8233505280; 
                   915020783660384899/351859200; 
                   -485845220125397/483840];

% Solving the linear equation
[system_gauss, independent_gauss] = gauss_solver(vandermonde_2, independent_vector_2);
solution_gauss_2 = upper_triangular_solver(system_gauss, independent_gauss)';

[abs_error_gauss, rel_error_gauss] = compute_errors(real_solution_2, solution_gauss_2);

disp("Apartado 2A. Matriz de Gauss triangular superior:")
disp(system_gauss)
disp("Apartado 2A. Termino independiente de Gauss:")
disp(independent_gauss)

disp("\n")

disp("Apartado 2A. Solucion con Gauss:")
disp(solution_gauss_2)
disp("Apartado 2B. Error absoluto con Gauss:")
disp(abs_error_gauss)
disp("Apartado 2B. Error relativo con Gauss:")
disp(rel_error_gauss)
disp("\n")

[system_pivoting, independent_pivoting] = gauss_column_pivoting_solver(vandermonde_2, independent_vector_2);
solution_pivoting_2 = upper_triangular_solver(system_pivoting, independent_pivoting)';

[abs_error_pivoting, rel_error_pivoting] = compute_errors(real_solution_2, solution_pivoting_2);

disp("Apartado 2A. Matriz de GPC triangular superior:")
disp(system_pivoting)
disp("Apartado 2A. Termino independiente de GPC:")
disp(independent_pivoting)
disp("\n")

disp("Apartado 2A. Solucion con GPC:")
disp(solution_pivoting_2)
disp("Apartado 2B. Error absoluto con GPC:")
disp(abs_error_pivoting)
disp("Apartado 2B. Error relativo con GPC:")
disp(rel_error_pivoting)
disp("\n")

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%% EXERCISE 2_2 %%%%%%%%%%%%%%%%
disp("EJERCICIO 2 (Resolucion con GPM)")
disp("\n")

[system_gpm, independent_gpm, permutation_gpm] = gauss_maximal_pivoting_solver(vandermonde_2, independent_vector_2);
solution_gauss_gpm_unsorted = upper_triangular_solver(system_gpm, independent_gpm)';
solution_gauss_gpm = reorder_solution(solution_gauss_gpm_unsorted, permutation_gpm);

[abs_error_gauss_gpm, rel_error_gauss_gpm] = compute_errors(real_solution_2, solution_gauss_gpm);

disp("Apartado 2A. Matriz de GPM triangular superior:")
disp(system_gpm)
disp("Apartado 2A. Termino independiente de GPM:")
disp(independent_gpm)
disp("Apartado 2A. Vector de permutacion de GPM:")
disp(permutation_gpm)

disp("\n")

disp("Apartado 2A. Solucion con GPM:")
disp(solution_gauss_gpm)
disp("Apartado 2B. Error absoluto con GPM:")
disp(abs_error_gauss_gpm)
disp("Apartado 2B. Error relativo con GPM:")
disp(rel_error_gauss_gpm)
disp("\n")
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
