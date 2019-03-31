function [consistent] = isConsistent(A, B)
    [m, n] = size(A);
    [p, q] = size(B);
    if n==p & q==1 then
        if and(B==0) | rank(A)==rank([A, B]) then
            consistent = %t;
        else
            consistent = %f;
        end
    else
        consistent = %f;
    end
endfunction

A = [1 2 3;3 4 4;7 10 12]; 
B = [0 0 0]';
x = isConsistent(A, B);
disp(x);

A = [2 3 -4 1; 1 -1 1 2; 5 0 -1 7; 7 8 -11 5]; 
B = [0 0 0 0]';
x = isConsistent(A, B);
disp(x);

A = [2 6 0; 6 20 -6; 0 6 -18]; 
B = [-11 -3 -1]'; 
x  = isConsistent(A, B);
disp(x);

A = [1 2 3; 2 1 1; 1 1 1]; 
B = [5 4 3]'; 
x  = isConsistent(A, B);
disp(x);


/*

  T

  T

  F

  T
  
*/

