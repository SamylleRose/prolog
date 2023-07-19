% com um único cut
reparte([], [], []).
reparte([N|Resto], [N|Positivos], Negativos) :- N >= 0, !, reparte(Resto, Positivos, Negativos).
reparte([N|Resto], Positivos, [N|Negativos]) :- N < 0, reparte(Resto, Positivos, Negativos).


% sem cut

reparte([], [], []).
reparte([N|Resto], [N|Positivos], Negativos) :- N >= 0, reparte(Resto, Positivos, Negativos).
reparte([N|Resto], Positivos, [N|Negativos]) :- N < 0, reparte(Resto, Positivos, Negativos).
