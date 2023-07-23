imc(Peso,Altura) :- X is Peso/(Altura * Altura),
                     write('Seu IMC é: '), write(X). 

media(X, Y, Z) :- Resultado is ((X + Y + Z) / 3),
                  write(Resultado).