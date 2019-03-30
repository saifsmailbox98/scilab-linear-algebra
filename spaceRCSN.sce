function [rowspace, dimR, colspace, dimC, nullspace, dimN] = spaceRCSN(A)
    
    [m, n] = size(A);
    r = rank(A);
    echelon = rref(A);
    rowspace = zeros(r, n);
    colspace = zeros(r, m);
    k = 1;
    l = 1;
    
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


