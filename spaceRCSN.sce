function [rowspace, dimR, colspace, dimC, nullspace, dimN] = spaceRCSN(A)
    
    [m, n] = size(A);
    r = rank(A);
    echelon = rref(A);
    rowspace = zeros(r, n);
    colspace = zeros(r, m);
    k = 1;
    
    for i=1:m
        if ~and(echelon(i, :)==0) then
            rowspace(k, :) = echelon(i, :);
            colspace(k, :) = A(:, i);
            k = k+1;
        end
    end
    nullspace = kernel(A);
    dimR = r;
    dimC = r;
    dimN = n - r;
endfunction

A = [1 -1 1 3 2;2 -1 1 5 1; 0 1 -1 -1 -3];
[r, dr, c, dc, n, dn] = spaceRCSN(A);
disp(r);
disp(dr);
disp(c);
disp(dc);
disp(n);
disp(dn);

/*

   1.   0.   0.   2.  -1.
   0.   1.  -1.  -1.  -3.

   2.

   1.   2.   0.
  -1.  -1.   1.

   2.

  -0.1354001   0.0393158   0.9006148
   0.921171   -0.200996    0.1629036
  -0.1169189  -0.9496078   0.008238 
   0.2063272   0.0900949  -0.3638827
   0.2772542   0.2195057   0.1728494

   3.
   
*/


