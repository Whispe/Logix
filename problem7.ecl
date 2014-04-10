:- lib(ic).

uniq([],[]).
uniq([X|Xs],Ys) :- member(X,Xs), uniq(Xs,Ys), !. % Cut operator inserted here.
uniq([X|Xs],[X|Ys]) :- uniq(Xs,Ys).
