function [rank, nullity] = ranknull(T)
    [m, n] = size(T);
    rank = rank(T);
    nullity = n - rank;
endfunction

T  = [1 -1 1 1; 0 1 1 0; 0 2 2 -4]
[r, n] = ranknull(T);
disp(r);
disp(n);


T  = [1 2 -1; 0 1 1; 1 1 -2];
[r, n] = ranknull(T);
disp(r);
disp(n);


T  = [1 2 3 1; 1 3 5 -2; 3 8 13 -3];
[r, n] = ranknull(T);
disp(r);
disp(n);

/*

   3.

   1.

   2.

   1.

   2.

   2.
   
*/
