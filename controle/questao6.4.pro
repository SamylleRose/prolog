unificável([], _, []).
unificável([X|Resto], Termo, [X|Lista2]) :-
    \+ (X = Termo),
    unificável(Resto, Termo, Lista2).
unificável([X|Resto], Termo, Lista2) :-
    X = Termo,
    unificável(Resto, Termo, Lista2).
