%EJERCICIO 2: Resolver la ecuación matricial A*X*B^t = C

A = [-3, -2; 3, 3];
B = [5, 3; 9, 4];
C = [1, 1; 0, 0];

% Si tenemos la ecuación A*X*B^t = C, multiplicando por la izquierda por la 
% inversa de A, tenemos que X*B^t = A^(-1)*C. Igualmente, multiplicando por la
% derecha por la inversa de $B^t$, nos queda que X=A^(-1)*C*(B^t)^(-1).

% Importante: Todo lo anterior es cierto si la matriz inversa de A y de B^t
% existen; esto es, cuando su determinante no es cero. Comprobémoslo primero.

function invertible = is_invertible(matrix)
  if det(matrix) != 0
    invertible = true;
    return;
  else
    invertible = false;
    return;
  endif
endfunction

invertible_A = is_invertible(A);
invertible_B = is_invertible(B);

if invertible_A & invertible_B
  X = inv(A)*C*inv(B');
  
  disp("Ambas matrices son invertibles. La solución es")
  disp(X)
  
  disp("Matriz del lado izquierdo de la ecuación")
  disp(A*X*B')
  
  disp("Matriz del lado derecho de la ecuación")
  disp(C)
else
  disp("Las matrices A y B no son invertibles.")
endif

