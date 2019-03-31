function [X] = solveLUD(A, B)
    [L, U] = lu(A);
    Y = L\B;
    X = U\Y;
endfunction

A = [3 2 7;2 3 1; 3 4 1];
B = [4 5 7]';

X = solveLUD(A, B);
disp(X);


A = [2 3 1; 1 2 3; 3 1 2];
B = [9 6 8]';

X = solveLUD(A, B);
disp(X);

/*

   0.875
   1.125
  -0.125

   1.9444444
   1.6111111
   0.2777778

*/
