function H = generate_surface(domain1, domain2)
  x = [];
  y = [];
  z = [];
      
  for u = domain1
    for v = domain2
      x = [x ## COMPLETAR ##];
      y = [y ## COMPLETAR ##];
      z = [z ## COMPLETAR ##];
    endfor
  endfor
  H = [x; y; z]';
endfunction
