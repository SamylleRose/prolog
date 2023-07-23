inverter([], []).
inverter([X | Resto], Invertida) :-
    inverter(Resto, RestoInvertido),
    append(RestoInvertido, [X], Invertida).

% Lista com 1 milhão de elementos
lista_grande(Lista) :-
    length(Lista, 1000000).

% Predicado para medir o tempo de execução da inversão
medir_tempo_inversao :-
    lista_grande(Lista),
    time(inverter(Lista, Invertida)).
