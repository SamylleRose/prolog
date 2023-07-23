contar_elementos([], _, 0).
contar_elementos([X | Resto], Elemento, N) :-
    X = Elemento,
    contar_elementos(Resto, Elemento, NResto),
    N is NResto + 1.
contar_elementos([_ | Resto], Elemento, N) :-
    contar_elementos(Resto, Elemento, N).

escore([], [], 0, 0).
escore([X | RestoX], [Y | RestoY], A, B) :-
    X = Y,
    escore(RestoX, RestoY, AResto, BResto),
    contar_elementos(RestoX, X, N),
    A is AResto + N,
    B is BResto.
escore([_ | RestoX], [Y | RestoY], A, B) :-
    escore(RestoX, RestoY, A, BResto),
    contar_elementos(RestoY, Y, N),
    B is BResto + N.
