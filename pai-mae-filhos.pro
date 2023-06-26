% % 1. Usando fatos, defina as relações pai e mãe e irmão da Figura. Em
% % seguida, faça consultas para verificar se as relações estão corretas.


progenitor(ana, eva).
progenitor(ivo, eva).
progenitor(bia, rai).
progenitor(bia, clo).
progenitor(bia, ary).
progenitor(gil, rai).
progenitor(gil, clo).
progenitor(gil, ary).
progenitor(eva, noe).
progenitor(rai, noe).
progenitor(ary, gal).
progenitor(lia, gal).

sexo(ana, feminino).
sexo(eva, feminino).
sexo(bia, feminino).
sexo(clo, feminino).
sexo(lia, feminino).
sexo(gal, feminino).
sexo(ivo, masculino).
sexo(rai, masculino).
sexo(noe, masculino).
sexo(gil, masculino).
sexo(ary, masculino).

casados(X, Y) :- progenitor(X, Z), progenitor(Y, Z), X\=Y.
pai(X,Y) :- progenitor(X,Y), sexo(X,masculino), X\=Y.
irmao(X,Y) :- progenitor(Z,X), progenitor(Z,Y), sexo(X,masculino), X\=Y.
irma(X,Y) :- progenitor(Z,X), progenitor(Z,Y), sexo(X,feminino), X\=Y.




