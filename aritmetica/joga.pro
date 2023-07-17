% Assumindo as seguintes definições de operadores:
% :- op(300, xfx, joga).
% :- op(200, xfy, e).
% então os dois termos seguintes possuem sintaxe válida:
% T1 = marcelo joga futebol e squash.
% T2 = renata joga tenis e basquete e volei.
% Como estes termos são interpretados pelo Prolog? Qual é o functor principal de cada termo e
% qual a sua estrutura?

e(joga(marcelo, futebol), joga(marcelo,squash)).
e(joga(renata,tenis), e(basquete, volei)).