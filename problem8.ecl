:- lib(ic).
:- lib(branch_and_bound).

inc_subseq([],[]).
inc_subseq([_|X],Y) :- inc_subseq(X,Y).
inc_subseq([A|X],[A|Y]) :- inc_subseq(X,Y), (Y=[]; Y=[B|_],A<B).

longest_inc_subseq(S,L) :-
    minimize((inc_subseq(S,L),length(L,X), Cost is -X), Cost).
