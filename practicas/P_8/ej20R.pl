%Un número poderoso es un número natural m tal que por cada número primo p que divide a m, p2 también
%divide a m. Definir el predicado próximoNumPoderoso(+X,-Y) que instancie en Y el siguiente número poderoso
%a partir de X. Por ejemplo:
%próximoNumPoderoso(20,Y). Y = 25;

desde(X, X).
desde(X, Y):- nonvar(Y), Y > X.
desde(X, Y):- var(Y), X1 is X+1, desde(X1, Y).

esPrimo(A) :- not((A1 is A-1,between(2,A1,N), 0 is mod(A,N))),not(A is 1).

power2(Y, X):- X is Y*Y.
proximoNumeroPoderoso(X, Y) :- desde(X, Y), between(2, Y, P), esPrimo(P), 0 is mod(P, Y), power2(P, PP), 0 is mod(PP, Y)).
