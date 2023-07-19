p(1).
p(2) :- !.
p(3).

% Base de fatos
p(1).
p(2) :- !.
p(3).

% Consulta (a)
consulta_a(X) :-
    p(X).

% Consulta (b)
consulta_b(X, Y) :-
    p(X),
    p(Y).

% Consulta (c)
consulta_c(X, Y) :-
    p(X),
    !,
    p(Y).
