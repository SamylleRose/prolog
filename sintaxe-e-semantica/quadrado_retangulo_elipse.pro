
% Sugira uma representação para retângulos, quadrados, círculos e elipses, usando uma abordagem
% similar à apresentada na Figura 3.4. Procure obter a representação mais geral possível, por 
% exemplo, um quadrado é um caso especial de retângulo e um círculo pode ser considerado um 
% caso especial de elipse

% Retângulo
retangulo(Largura, Altura).

% Quadrado (caso especial de retângulo)
quadrado(Lado) :-
    retangulo(Lado, Lado).

% Elipse
elipse(RaioX, RaioY).

% Círculo (caso especial de elipse)
circulo(Raio) :-
    elipse(Raio, Raio).
