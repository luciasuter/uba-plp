natural(0).
natural(suc(X)) :- natural(X).

%menorOIgual(X, suc(Y)) :- menorOIgual(X, Y).
%menorOIgual(X,X) :- natural(X).

% i. Explicar qué sucede al realizar la consulta menorOIgual(0,X).
% entramos en un bucle infinito en donde siempre pasamos por la regla donde Y := suc(Y)

% iii. corregir menorOIgual

menorOIgual(X, X) :- natural(X).
menorOIgual(X,suc(Y)):- menorOIgual(X, Y).