:- lib(ic).

greater_than(s(z),z).
greater_than(s(A),z) :- greater_than(A,z).
greater_than(s(X),s(Y)) :- greater_than(X,Y).

% Outputs "A = s(_176)" for query "greater_than(s(A),s(z))."
% greater_than(s(_),z).
% greater_than(s(X),s(Y)) :- greater_than(X,Y).
