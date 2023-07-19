% aritmetica

soma(Numero1,Numero2) :- X is (Numero1 + Numero2),
                        write(X).
diferenca(Numero1,Numero2) :- X is (Numero1 - Numero2),
                            write(X).

par(X) :- 0 is X mod 2.

impar(X) :- 1 is X mod 2.

positivo(X) :- X > 0.

negativo(X) :- X < 0.

dobro(Numero) :- X is (Numero * 2),
                write(X).

triplo(Numero) :- X is (Numero * 3),
                write(X).

igual_a_zero(X) :- X =:= 0.

igual_a_um(X):- X =:= 1.

media(Numero1,Numero2, Numero3) :- X is ((Numero1 + Numero2 + Numero3)/3),
                                 write(X).

divisivel(X,Y):- 0 is X mod Y.

area_do_retangulo(Base,Altura, Area):- Area is (Base*Altura).

area_do_triangulo(Base, Altura, Area) :- Area is ((Base * Altura) / 2).


% Listas

cons(X,Y,[X|Y]).

lista([]).

tamanho([],0).
tamanho([_|Y],N):- tamanho(Y,N1), N is N1 + 1.





