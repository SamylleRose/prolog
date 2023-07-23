acomoda([], []).
acomoda([X | Resto], Acomodado) :-
    is_list(X),
    acomoda(X, X_acomodado),
    acomoda(Resto, Resto_acomodado),
    append(X_acomodado, Resto_acomodado, Acomodado).
acomoda([X | Resto], [X | Acomodado]) :-
    not(is_list(X)),
    acomoda(Resto, Acomodado).
