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

A1 = [1 2 3;3 4 4;7 10 12]; 
B1 = [0 0 0]';
x = isConsistent(A1, B1);
disp(x);

A2 = [2 3 -4 1; 1 -1 1 2; 5 0 -1 7; 7 8 -11 5]; 
B2 = [0 0 0 0]';
x = isConsistent(A2, B2);
disp(x);

A3 = [2 6 0; 6 20 -6; 0 6 -18]; 
B3 = [-11 -3 -1]'; 
x  = isConsistent(A3, B3);
disp(x);

A4 = [1 2 3; 2 1 1; 1 1 1]; 
B4 = [5 4 3]'; 
x  = isConsistent(A4, B4);
disp(x);




