% Três músicos de uma banda multinacional executam
um solo em um trecho de música. Cada um toca uma
única vez. O pianista toca primeiro. John toca
saxofone e toca antes do australiano. Mark é dos
Estados Unidos e toca antes do violinista. Um solista
vem do Japão e um se chama Sam. Encontre quem
vem de qual país, quem toca qual instrumento e em
qual ordem.

musico(john).
musico(mark).
musico(sam).

instrumento(piano).
instrumento(saxofone).
instrumento(violino).

pais(australia).
pais(estados_unidos).
pais(japao).

ordem(1).
ordem(2).
ordem(3).

solista(X, Y, Z) :-
    musico(X),
    instrumento(Y),
    pais(Z).

solista(john, saxofone, _).
solista(_, piano, _).
solista(_, _, australia).
solista(mark, _, estados_unidos).
solista(_, _, japao).
solista(_, _, _).