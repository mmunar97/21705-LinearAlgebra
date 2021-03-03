%EJERCICIO 3: Resolver el sistema matricial 2*A+B=M y A-3*B=N, donde M y N son conocidas.

M = [1, 2, 2; -2, 1, 0];
N = [-4, -3, -2; -1, 0, -1];

% Resolviendo el sistema, se llega a B = (M-2*N)/7 y A = N+3*B.

disp("Matriz solución B")
B = (1/7)*(M-2*N);
disp(B)

disp("Matriz solución A")
A = N+3*B;
disp(A)

disp("Matriz del lado izquierdo de la primera ecuación")
disp(2*A+B)
disp("Matriz del lado derecho de la primera ecuación")
disp(M)

disp("Matriz del lado izquierdo de la segunda ecuación")
disp(A-3*B)
disp("Matriz del lado derecho de la segunda ecuación")
disp(N)
