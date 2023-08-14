maior_menor([], Maior, Menor, Maior, Menor).
maior_menor([X | Resto], MaiorAtual, MenorAtual, Maior, Menor) :-
    X > MaiorAtual,
    maior_menor(Resto, X, MenorAtual, Maior, Menor).
maior_menor([X | Resto], MaiorAtual, MenorAtual, Maior, Menor) :-
    X =< MaiorAtual,
    maior_menor(Resto, MaiorAtual, X, Maior, Menor).

soma_e_conta([], 0, 0, 0).
soma_e_conta([X | Resto], Soma, Contagem, Tamanho) :-
    soma_e_conta(Resto, SomaResto, ContagemResto, TamanhoResto),
    Soma is SomaResto + X,
    Contagem is ContagemResto + 1,
    Tamanho is TamanhoResto + 1.

estat(L, Max, Min, Med, DP) :-
    maior_menor(L, -999999, 999999, Max, Min),
    soma_e_conta(L, Soma, Contagem, Tamanho),
    Med is Soma / Contagem,
    desvio_padrao(L, Med, DP).

desvio_padrao([], _, 0).
desvio_padrao([X | Resto], Med, DP) :-
    desvio_padrao(Resto, Med, DPResto),
    DP is DPResto + (X - Med) * (X - Med).

% Predicado para calcular o desvio padrão
desvio_padrao(L, Med, DP) :-
    length(L, N),
    soma_e_conta(L, Soma, _, _),
    Media is Soma / N,
    desvio_padrao(L, Media, SomaDesvios),
    DP is sqrt(SomaDesvios / N).
