inverter_lista([], []).
inverter_lista([X | Resto], Invertida) :-
    is_list(X),          
    inverter_lista(X, X_invertida),
    inverter_lista(Resto, Resto_invertido),
    append(Resto_invertido, [X_invertida], Invertida).
inverter_lista([X | Resto], [X | Invertida]) :-
    not(is_list(X)),      
    inverter_lista(Resto, Invertida).
