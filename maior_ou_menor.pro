maioroumenor(X) :- write('Digite um numero:'), 
                   read(X),
                  (
                    (X>100, write('Maior que 100!') 
                    ; 
                    (X<100), write('Menor que 100!'))
                  ).
                   