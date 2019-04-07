
function [X, PN] = jacobi(A)
    if isequal(A,A.')
        
        [m, n] = size(A);
    check = %t;
    PN = eye(m, n);
    
    while check
        
        P = eye(m, n);
        p = 1;
        q = 2;
        for i=1:m
            for j=1:n
                if( i~=j & abs(A(i, j))>A(p,q))
                    p = i;
                    q = j;
                end
            end
        end
    
    
    t = 0.5 * atan(2*A(p, q)/(A(p, p) - A(q, q)));
    P(p, p) = cos(t);
    P(q, q) = cos(t);
    P(p, q) = -sin(t);
    P(q, p) = sin(t);
    
    A = P'*A*P;
    PN = PN * P;

    check = %f;
    for i=1:m
        for j=1:n
            if i~= j & abs(A(i, j) - 0) > 0.00000001
                check = %t;
     
     

end
end
end

end

X = diag(A)';
PN = PN';
end 
    
endfunction


A = [5 0 1; 0 -2 0; 1 0 5];
[val, vec] = jacobi(A);

disp(val);
disp(vec);


A = [1 sqrt(2) 2; sqrt(2) 3 sqrt(2); 2 sqrt(2) 1];
[val, vec] = jacobi(A);

disp(val);
disp(vec);

/*

   6.  -2.   4.

   0.7071068   0.   0.7071068
   0.          1.   0.       
  -0.7071068   0.   0.7071068

   5.   1.  -1.

   0.5         0.7071068   0.5      
  -0.5         0.7071068  -0.5      
  -0.7071068   0.          0.7071068
  
*/
