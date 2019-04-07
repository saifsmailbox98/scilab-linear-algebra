function [ev, X] = rayleigh(A, X, n)
    for i=0:n
        X = A*X;
        X = X/max(abs(X));
    end
    ev = ((A * X)' * X ) / (X' * X);
endfunction


A = [-1 1 -2; 1 -1 2; -2 2 0];
X = [1; 0; 0];
[e, x] = rayleigh(A, X, 3);
disp(e);
disp(x);

A = [6 -2 2; -2 3 -1; 2 -1 3];
X = [1; 1; 1];
[e, x] = rayleigh(A, X, 5);
disp(e);
disp(x);

/*

  -3.9883041

   1.
  -1.
   0.9090909

   7.9999987

   1.
  -0.4994508
   0.5001831

*/
