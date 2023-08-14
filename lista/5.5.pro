limpa(_, [], []).
limpa(X, [X | Resto], L2) :-
    limpa(X, Resto, L2).
limpa(X, [Y | Resto], [Y | L2]) :-
    X \= Y,
    limpa(X, Resto, L2).
