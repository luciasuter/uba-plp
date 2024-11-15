% coprimos(-X, -Y).

paresSuman(S,X,Y) :- S1 is S-1, between(1,S1,X), Y is S-X.  
generarPares(X,Y) :- desde(2,S), paresSuman(S,X,Y).

coprimos(X, Y):-  generarPares(X, Y), 1 =:= gcd(X, Y).
