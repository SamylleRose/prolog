inverter_lista([], []).
inverter_lista([X | Resto], Invertida) :-
    inverter_lista(Resto, RestoInvertido),
    append(RestoInvertido, [X], Invertida).

palindromo(Lista) :-
    inverter_lista(Lista, Invertida),
    Lista = Invertida.
