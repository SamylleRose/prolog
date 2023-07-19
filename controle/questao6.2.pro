classe(N, positivo) :- N > 0, !.
classe(0, nulo) :- !.
classe(N, negativo) :- N < 0.

% melhorado

?- classe(5, Classe).
Classe = positivo.

?- classe(0, Classe).
Classe = nulo.

?- classe(-3, Classe).
Classe = negativo.
