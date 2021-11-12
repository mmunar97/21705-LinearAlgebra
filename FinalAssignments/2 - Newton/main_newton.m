%initial_point = ## COMPLETAR ##

%eps = ## COMPLETAR ##
%nmax = ## COMPLETAR ##

iterations = [initial_point];

iteration = 1;
iteration_norm = Inf;
iteration_vector = initial_point;

while (iteration < nmax && iteration_norm > eps)

  ## COMPLETAR ##  
  
endwhile

if (iteration >= nmax && iteration_norm > eps)
  disp("Convergence is not reached.\n")
else
  disp("Convergence reached. Solution is:\n")
  disp(iteration_vector)
endif
