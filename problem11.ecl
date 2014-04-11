:- lib(ic).

inorder1(t(X,L,R),Xs) :-
    inorder1(L,Ls),
    inorder1(R,Rs),
    append(Ls,[X|Rs],Xs).
inorder1(nil,[]).

inorder2(nil,[]).
inorder2(t(X,L,R),Xs) :-
    append(Ls,[X|Rs],Xs),
    inorder2(L,Ls),
    inorder2(R,Rs).

% Use findall(Tree,inorder2(Tree,[a,b,c,d,e]),List), length(List,N). to find the number of legal BSTs.
