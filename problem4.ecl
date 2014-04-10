:- lib(ic).

swap([],[]).
swap([M],[M]).
swap([X,Y|T],[Y,X|T]).
swap([X,Y|P],[X|Q]) :- swap([Y|P],Q).

% Longer version with a predicate to check if two elements are consecutive in the list.
%consec(X,Y,[X,Y|_]).
%consec(X,Y,[_|Z]) :- consec(X,Y,Z).
%
%swap(S,L) :-
%    %member(X,S), % Just causes repeat solutions when elements in list are repeated.
%    %member(Y,S), % Ditto.
%    consec(X,Y,S),
%    swap(X,Y,S,L).
%
%swap(_,_,[],[]).
%swap(_,_,[M],[M]).
%swap(X,Y,[X,Y|T],[Y,X|T]) :- !.
%swap(X,Y,[P,Q|R],[P|S]) :- swap(X,Y,[Q|R],S).

mystery(W,Z) :- swap(W,X), swap(X,Y),  swap(Y,Z).
