%EJERCICIO 1: Resolver la ecuación matricial 2X+4A=3*B*A.

A = [0, -1; 2, 1];
B = [1, 2;3, 4];

% Si tenemos la ecuación 2X+4A=3*B*A, un cálculo sencillo nos muestra
% que 2X = 3*B*A-4*A, por lo que X = 1/2*(3*B*A-4*A)

X = 0.5*(3*B*A-4*A);
disp("Matriz solución")
disp(X)

% Podemos comprobar que es efectuvamente solución
left_matrix = 2*X+4*A;
right_matrix = 3*B*A;

disp("Matriz del lado izquierdo de la ecuación")
disp(left_matrix)

disp("Matriz del lado derecho de la ecuación")
disp(right_matrix)
