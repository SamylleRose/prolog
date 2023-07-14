progenitor(joao, ana).
progenitor(joao, maria).
progenitor(maria, pedro).
progenitor(maria, carlos).
progenitor(pedro, lucas).
progenitor(pedro, luisa).
progenitor(carlos, mariana).
progenitor(carlos, andrea).
progenitor(marcos, maria).
progenitor(marcos, pedro).
progenitor(lucas, gabriel).
progenitor(luisa, sofia).
progenitor(mariana, julia).
progenitor(andrea, lucas).

irmao(X, Y) :- progenitor(Z, X), progenitor(Z, Y).

primo(X, Y) :- progenitor(Z, X), progenitor(W, Y), irmao(Z, W).