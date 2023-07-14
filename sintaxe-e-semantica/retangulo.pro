% Supondo que um retângulo seja representado pelo termo:
% retângulo(SupEsq, InfDir)
% onde SupEsq representa o ponto superior esquerdo e InfDir o ponto inferior direito de um 
% retângulo em uma tela de vídeo (1280 x 1024), defina a relação
% quadrado(R, ...)
% que é verdadeira se R é um quadrado.


quadrado(retangulo(SupEsq, InfDir)) :-
    SupEsq = (X1, Y1), 
    InfDir = (X2, Y2),
    Largura is X2 - X1,
    Altura is Y2 - Y1,
    Largura =:= Altura,
    X1 >= 0, X2 =< 1280,
    Y1 >= 0, Y2 =< 1024.
