function [values, vectors] = eigenVV(A)
    values = spec(A)';
    [vec, val] = spec(A);
    vectors = vec';
endfunction


A = [1 -3 3; 3 -5 3; 6 -6 4];
[val, vec] = eigenVV(A);
disp(val);
disp(vec);

/*

   4.  -2.  -2.

  -0.4082483  -0.4082483  -0.8164966
  -0.8103421  -0.3185154   0.4918268
   0.1932607  -0.5903833  -0.783644 
   
*/
