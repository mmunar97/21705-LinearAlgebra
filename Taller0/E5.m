%EJERCICIO 5: Dada la matriz A de tamaño 6x6 del ejemplo, calculad la matriz
% transpuesta usando la indexación de matrices. Verificad que el resultado es
% la matriz transpuesta.

A = [1, 2, 3, 4, 5, 6; 
     7, 8, 9, 10, 11, 12; 
     13, 14, 15, 16, 17, 18; 
     19, 20, 21, 22, 23, 24;
     25, 26, 27, 28, 29, 30;
     31, 32, 33, 34, 35, 36];
     
[rows, columns] = size(A);

transposed = zeros(columns, rows);
for row_idx=1:rows
  transposed(:, row_idx) = A(row_idx, :);
endfor

disp("Matriz transpuesta")
disp(transposed)
