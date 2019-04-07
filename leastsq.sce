function [s] = leastsq(A, b)
    s = lsq(A, b);
endfunction


A = [2 -1; 1 -2; 1 1];
b = [2 1 4]';

r = leastsq(A, b);

disp(r);

/*

   2.
   1.

*/
