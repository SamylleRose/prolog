aluno(joao,calculo).
aluno(maria,calculo).
aluno(joel,programacao).
aluno(joel,estrutura).

frequenta(joao,puc).
frequenta(maria,puc).
frequenta(joel,ufj).

professor(carlos,calculo).
professor(ana_paula,estrutura).
professor(pedro,programacao).

funcionario(pedro,ufrj).
funcionario(ana_paula,puc).
funcionario(carlos, puc).

% regras

alunos_do_professor(Z,X):-professor(X,Y),aluno(Z,Y).
professor_do_aluno(X,Z):-funcionario(X,Y),frequenta(Z,Y).
faculdade_assosciada(X,Y):- frequenta(X,Y);funcionario(X,Y).


