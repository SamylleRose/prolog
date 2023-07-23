% Relações unárias para triângulos
triangulo((X1,Y1), (X2,Y2), (X3,Y3)).

% Verifica se o triângulo é isósceles
isosceles(triangulo((X1,Y1), (X2,Y2), (X3,Y3))) :-
    distancia((X1,Y1), (X2,Y2), D1),
    distancia((X2,Y2), (X3,Y3), D2),
    distancia((X3,Y3), (X1,Y1), D3),
    (D1 =:= D2 ; D1 =:= D3 ; D2 =:= D3).

% Relações unárias para retângulos
retangulo((X1,Y1), (X2,Y2), (X3,Y3), (X4,Y4)).

% Verifica se o retângulo é um quadrado (lados iguais)
quadrado(retangulo(_,_,_,_), Lado) :-
    distancia((X1,Y1), (X2,Y2), Lado),
    distancia((X2,Y2), (X3,Y3), Lado),
    distancia((X3,Y3), (X4,Y4), Lado),
    distancia((X4,Y4), (X1,Y1), Lado).

% Verifica se o retângulo é retângulo (lados opostos iguais)
retangulo(retangulo(_,_,_,_), Lado1, Lado2) :-
    distancia((X1,Y1), (X2,Y2), Lado1),
    distancia((X2,Y2), (X3,Y3), Lado2),
    distancia((X3,Y3), (X4,Y4), Lado1),
    distancia((X4,Y4), (X1,Y1), Lado2).

% Relação entre diferentes indivíduos
casa(quadrado(_, Lado), triangulo(_, _, _)).
% Representa uma casa como um quadrado com um triângulo em cima.

% Relação de distância entre centros geométricos
distancia((X1,Y1), (X2,Y2), Dist) :-
    Dist is sqrt((X2-X1)^2 + (Y2-Y1)^2).
