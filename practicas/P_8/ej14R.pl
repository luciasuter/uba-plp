
filasQSuman(_, [], _).
filasQSuman(N, [X|XS], P):- length(X, N), sumlist(X, P), filasQSuman(N, XS, P). % no es reversible

cuadradoSemiMagico(N, L):- length(L, N), desde(0, P), filasQSuman(N, L, P).  
