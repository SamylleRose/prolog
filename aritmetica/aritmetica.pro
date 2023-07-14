% Escreva uma regra em Prolog para verificar se um número é par.
par(X) :- X mod 2 =:= 0.

% Escreva uma regra em Prolog para calcular a soma de dois números.
soma(X, Y, S) :- S is X + Y.

% Escreva uma regra em Prolog para calcular o produto de dois números.
produto(X, Y, P) :- P is X * Y.

% Escreva uma regra em Prolog para calcular o fatorial de um número.
fatorial(0, 1).
fatorial(N, F) :- N > 0, N1 is N - 1, fatorial(N1, F1), F is N * F1.

% Escreva uma regra em Prolog para verificar se um número é primo.

primo(2).
primo(3).
primo(N) :- N > 3, N mod 2 =\= 0, \+divisivel(N, 3).

divisivel(N, X) :- N mod X =:= 0.
divisivel(N, X) :- X * X < N, X2 is X + 2, divisivel(N, X2).

% Escreva uma regra em Prolog para encontrar o máximo de dois números.

maximo(X, Y, X) :- X >= Y.
maximo(X, Y, Y) :- X < Y.


