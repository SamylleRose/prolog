sintoma(gripe, tosse).
sintoma(gripe, febre).
sintoma(gripe, congestao_nasal).
sintoma(gripe, coriza).
sintoma(gripe, espirros).
sintoma(gripe, dor_de_garganta).
sintoma(gripe, dor_de_cabeca).
sintoma(gripe, mal_estar_geral).
sintoma(gripe, chiado_no_peito).
sintoma(gripe, perda_de_olfato).
sintoma(gripe, silibos).
sintoma(gripe, hemoptise).

sintoma(resfriado, tosse).
sintoma(resfriado, febre).
sintoma(resfriado, congestao_nasal).
sintoma(resfriado, coriza).
sintoma(resfriado, espirros).
sintoma(resfriado, dor_de_garganta).
sintoma(resfriado, dor_de_cabeca).
sintoma(resfriado, mal_estar_geral).
sintoma(resfriado, fadiga).
sintoma(resfriado, chiado_no_peito).
sintoma(resfriado, perda_de_olfato).
sintoma(resfriado, silibos).
sintoma(resfriado, hemoptise).

sintoma(covid19, tosse).
sintoma(covid19, falta_de_ar).
sintoma(covid19, febre).
sintoma(covid19, congestao_nasal).
sintoma(covid19, coriza).
sintoma(covid19, espirros).
sintoma(covid19, dor_de_garganta).
sintoma(covid19, dor_de_cabeca).
sintoma(covid19, mal_estar_geral).
sintoma(covid19, fadiga).
sintoma(covid19, chiado_no_peito).
sintoma(covid19, irritacao_nos_olhos).
sintoma(covid19, perda_de_paladar).
sintoma(covid19, perda_de_olfato).
sintoma(covid19, dor_nas_articulacoes).
sintoma(covid19, silibos).
sintoma(covid19, hemoptise).

sintoma(influenza, tosse).
sintoma(influenza, falta_de_ar).
sintoma(influenza, febre).
sintoma(influenza, congestao_nasal).
sintoma(influenza, coriza).
sintoma(influenza, espirros).
sintoma(influenza, dor_de_garganta).
sintoma(influenza, dor_de_cabeca).
sintoma(influenza, mal_estar_geral).
sintoma(influenza, fadiga).
sintoma(influenza, perda_de_paladar).
sintoma(influenza, perda_de_olfato).
sintoma(influenza, dor_nas_articulacoes).
sintoma(influenza, silibos).
sintoma(influenza, hemoptise).

sintoma(asma, tosse).
sintoma(asma, falta_de_ar).
sintoma(asma, congestao_nasal).
sintoma(asma, coriza).
sintoma(asma, espirros).
sintoma(asma, dor_de_cabeca).
sintoma(asma, fadiga).
sintoma(asma, chiado_no_peito).
sintoma(asma, irritacao_nos_olhos).
sintoma(asma, perda_de_paladar).
sintoma(asma, perda_de_alfato).
sintoma(asma, dor_nas_articulacoes).
sintoma(asma, silibos).
sintoma(asma, hemoptise).

sintoma(rinite, tosse).
sintoma(rinite, falta_de_ar).
sintoma(rinite, congestao_nasal).
sintoma(rinite, coriza).
sintoma(rinite, espirros).
sintoma(rinite, dor_de_cabeca).
sintoma(rinite, fadiga).
sintoma(rinite, chiado_no_peito).
sintoma(rinite, irritacao_nos_olhos).
sintoma(rinite, perda_de_olfato).
sintoma(rinite, silibos).
sintoma(rinite, hemoptise).

sintoma(tuberculose, tosse).
sintoma(tuberculose, falta_de_ar).
sintoma(tuberculose, congestao_nasal).
sintoma(tuberculose, coriza).
sintoma(tuberculose, espirros).
sintoma(tuberculose, dor_de_cabeca).
sintoma(tuberculose, irritacao_nos_olhos).
sintoma(tuberculose, perda_de_olfato).
sintoma(tuberculose, silibos).
sintoma(tuberculose, hemoptise).

sintoma(pneumonia, tosse).
sintoma(pneumonia, falta_de_ar).
sintoma(pneumonia, febre).
sintoma(pneumonia, congestao_nasal).
sintoma(pneumonia, coriza).
sintoma(pneumonia, dor_de_garganta).
sintoma(pneumonia, dor_de_cabeca).
sintoma(pneumonia, mal_estar_geral).
sintoma(pneumonia, fadiga).
sintoma(pneumonia, chiado+no_peito).
sintoma(pneumonia, perda_de_olfato).
sintoma(pneumonia, silibos).
sintoma(pneumonia, hemoptise).

sintoma(outras_doencas, tosse).
sintoma(outras_doencas, falta_de_ar).
sintoma(outras_doencas, febre).
sintoma(outras_doencas, congestao_nasal).
sintoma(outras_doencas, coriza).
sintoma(outras_deoncas, espirros).
sintoma(outras_doencas, dor_de_garganta).
sintoma(outras_doencas, dor_de_cabeca).
sintoma(outras_doencas, mal_estar_geral).
sintoma(outras_doencas, fadiga).
sintoma(outras_doencas, chiado_no_peito).
sintoma(outras_doencas, perda_de_paladar).
sintoma(outras_doencas, perda_de_olfato).
sintoma(outras_doencas, silibos).
sintoma(outras_doencas, homeptise).

subconjunto(tosse, sintomas_gerais).
subconjunto(falta_de_ar, sintomas_respiratorios).
subconjunto(febre, sintomas_gerais).
subconjunto(congestao_nasal, sintomas_respiratorios).
subconjunto(coriza, sintomas_respiratorios).
subconjunto(espirros, sintomas_respiratorios).
subconjunto(dor_de_garganta, sintomas_respiratorios).
subconjunto(dor_de_cabeca, sintomas_gerais).
subconjunto(mal_estar_geral, sintomas_gerais).
subconjunto(fadiga, sintomas_gerais).
subconjunto(chiado_no_peito, sintomas_respiratorios).
subconjunto(irritacao_nos_olhos, sintomas_gerais).
subconjunto(perda_de_paladar, sintomas_gerais).
subconjunto(perda_de_olfato, sintomas_gerais).
subconjunto(dor_nas_articulacoes, sintomas_gerais).
subconjunto(silibos, sintomas_respiratorios).
subconjunto(hemoptise, sintomas_respiratorios).

doenca_possui_sintomas(Doenca, Sintomas) :-
    findall(Sintoma, sintoma(Doenca, Sintoma), SintomasDaDoenca),
    intersection(SintomasDaDoenca, Sintomas, SintomasComuns),
    length(SintomasComuns, CommonCount),
    length(Sintomas, TotalCount),
    CommonCount > 0,
    CommonCount >= TotalCount * 0.001.

possiveis_doencas(Sintomas, PossiveisDoencas) :-
    findall(Doenca, (sintoma(Doenca, _), doenca_possui_sintomas(Doenca, Sintomas)), PossiveisDoencas).

main :- 
    writeln('Digite os sintomas que você está sentindo, separados por vírgula:'),
    read_line_to_string(user_input, SintomasInput),
    atomic_list_concat(SintomasList, ',', SintomasInput),
    possiveis_doencas(SintomasList, PossiveisDoencas),
    list_to_set(PossiveisDoencas, DoencasUnicas),
    writeln('Possíveis doenças:'),
    writeln(DoencasUnicas).

:- initialization(main).