:- lib(ic).

p([],1).
p([X|Xs],A) :- p(Xs,B), A #= X*B.

q(List,N) :- p(List,N), List::2..N, labeling(List).
