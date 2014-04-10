:- lib(ic).

inorder1(t(X,L,R),Xs) :-
    inorder1(L,Ls),
    inorder1(R,Rs),
    append(Ls,[X|Rs],Xs).
inorder1(nil,[]).

inorder2(nil,[]).
inorder2(t(X,L,R),Xs) :-
    inorder2(L,Ls),
    inorder2(R,Rs),
    append(Ls,[X|Rs],Xs).
