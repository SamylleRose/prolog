entre(N1, N2, X) :-
    N1 =< N2,        
    X is N1.        
entre(N1, N2, X) :-
    N1 < N2,        
    N1_next is N1 + 1, 
    entre(N1_next, N2, X). 
