function [X] = solveGSM(A, B, X, n)
    
    [p, q] = size(A);
while n>0
	for k = 1:q
		X(k) = ((B-A*X)/A(k,k))(k) + X(k)
	end
	n=n-1
end
endfunction

A = [28 4 -1; 2 17 4; 1 3 10];
B = [32 35 24]';
X = [0 0 0]';
X = solveGSM(A, B, X,3);
disp(X);


A = [8 1 -1;1 -7 2; 2 1 9];
B = [8 -4 12]';
X = [0 0 0]';
X = solveGSM(A, B, X,3);
disp(X);


A = [5 2 1; 1 4 2; 1 2 5];
B = [12 15 20]';
X = [1 0 3]';
X = solveGSM(A, B, X, 3);
disp(X);
/*
   0.9875932
   1.5090274
   1.8485325

   0.9968506
   0.9965626
   1.0010818

   0.99872
   2.01312
   2.995008
   
*/
