function [coordinates] = coordV(M, X)
    
    coordinates = (M'\X')';
    
endfunction

A = [1 -2; 4 -7];
X = [5, 3];
c = coordV(A, X);
disp(c);

A = [1 2 0; 1 3 2; 0 1 3];
X = [2 7 -4];
c = coordV(A, X);
disp(c);

/*

  -47.   13.

  -11.   13.  -10.
  
*/
