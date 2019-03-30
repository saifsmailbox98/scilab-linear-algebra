function [values, vectors] = eigenVV(A)
    values = spec(A)';
    [vec, val] = spec(A);
    vectors = vec';
endfunction


A = [1 -3 3; 3 -5 3; 6 -6 4];
[val, vec] = eigenVV(A);
disp(val);
disp(vec);

