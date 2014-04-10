:- lib(ic).

add(z,N,N). % Adding N to 0 results in N.
add(s(N),M,s(P)):- add(N,M,P). % Adding M to successor of N is the successor of adding M to N.

mult(z,_,z). % Multiplying N by 0 results in 0.
mult(s(N),M,P) :- % Multiplying successor of N by M is multiplying N by M and adding M.
    mult(N,M,Q),
    add(Q,M,P).

pow(z,z,s(z)). % Zero to the zero power is 1.
pow(s(_),z,s(z)). % Something to the zero power is 1.
pow(A,s(B),C) :- % A to the Bth power is C.
    pow(A,B,D),
    mult(D,A,C).
