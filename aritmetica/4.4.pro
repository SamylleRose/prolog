:- op(900, xfx, se).
:- op(800, xfx, então).
:- op(700, xfx, senão).
:- op(600, xfx, :=).

se(V1 > V2 então Var := V3 senão Var := V4) :-
    (V1 > V2 ->
        Var is V3
    ;
        Var is V4
    ).

?- X=2, Y=3, V2 is 2*X, V4 is 4*X,
   se Y > V2 então Z := Y senão Z := V4,
   se Z > 5 então W:=1 senão W:=0.


%  resultado: X = 2, Y = 3, V2 = 4, V4 = 8, Z = 8, W = 1.
