% fatos de parentesco
progenitor(maria, jose).
progenitor(joao, jose).
progenitor(joao, ana).
progenitor(jose, julia).
progenitor(jose, iris).
progenitor(iris, jorge).
progenitor(julia,fernanda).


% fatos de sexo

sexo(maria, feminino).
sexo(ana, feminino).
sexo(julia, feminino).
sexo(fernanda, feminino).
sexo(iris, feminino).
sexo(joao, masculino).
sexo(jose, masculino).
sexo(jorge, masculino).

% regras de parentesco

pai(X,Y) :- progenitor(X,Y), sexo(X,masculino).
mae(X,Y):- progenitor(X,Y), sexo(X, feminino).
filho(X,Y):- progenitor(X,Y), sexo(X, masculino).
filho(X,Y):- progenitor(X,Y), sexo(X, feminino).
irmao(X,Y):- progenitor(Z,X), progenitor(Z,Y), sexo(X,masculino).
irma(X,Y):- progenitor(Z,X), progenitor(Z,Y),  sexo(X,feminino).
tia(X,Y):- progenitor(Z,Y), irma(Z,X), sexo(X,feminino), (X\=Z).
tio(X,Y):- progenitor(Z,Y), irmao(Z,X), sexo(X,masculino), (X\=Z).
avo(X,Y):- progenitor(Z,X),progenitor(Z,Y), sexo(X,masculino).
avo(X,Y):- progenitor(Z,X),progenitor(Z,Y), sexo(X,feminino).
primos(X,Y):- progenitor(Z,X), progenitor(W,Y), irmao(Z,W).

