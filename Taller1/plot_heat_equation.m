function plot_heat_solution(x_grid, t_grid, U)
  [xx, yy] = meshgrid(t_grid, x_grid);
  mesh(xx, yy, U)
endfunction
