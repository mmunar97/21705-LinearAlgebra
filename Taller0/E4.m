%EJERCICIO 4: La función rand(m,n) genera aleatoriamente una matriz de tamaño 
% m x n. Usadla para generar un sistema de ecuaciones 5 x 5 (generando dos 
% matrices, la del sistema y el vector independiente). Después, resolved el 
% sistema y comprobad que la solución que os da es, efectivamente, una solución.

A = rand(5, 5);
b = rand(5, 1);

disp("La matriz del sistema es")
disp(A)

disp("El vector independiente es")
disp(b)

disp("La solución es")
X = inv(A)*b;
disp(X)


disp("Comprobación:")
disp("\t Lado izquierdo de la ecuación")
disp(A*X)
disp("\t Lado derecho de la ecuación")
disp(b)
