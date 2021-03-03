%EJERCICIO 6: Generad aleatoriamente una matriz A de tamaño 6x6 y calculad 
% la matriz de adjuntos.

A = rand(6,6);
[rows, columns] = size(A);

adjoint_matrix = zeros(rows, columns);

for row_idx=1:rows
  for col_idx=1:columns
    selected_rows = 1:rows;
    selected_columns = 1:columns;
    
    selected_rows(row_idx) = [];
    selected_columns(col_idx) = [];
    
    submatrix = A(selected_rows, selected_columns);
    
    adjoint_matrix(row_idx, col_idx) = (-1)**(row_idx+col_idx)*det(submatrix);
  endfor
endfor

disp("Matriz de adjuntos")
disp(adjoint_matrix)
