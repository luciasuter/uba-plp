desdeMalo(X,X).
desdeMalo(X,Y) :- N is X+1, desdeMalo(N,Y).

% el parametro de la izquierda debe estar instanciado siempre. El 2do parametro No debe estar instanciado porque se cuelga
% si no esta instanciado Y unifica con todos los valores mayores a al valor de X.
% si esta instanciado, devuelve true si Y >= X y false si Y < X Pero se cuelga.
% primero entra a desde(X, X) con el ejemplo desde(3,X), X unifica con 3 y luego entra
% a la segunda linea, N = 4 y se vuelve a llamar a desde(4, X), alli X unifica con 4 y se repite el proceso eternamente

% desdeReversible(+X,?Y)
% Dar una nueva versión del predicado que funcione con la instanciación desdeReversible(+X,?Y), tal que
% si Y está instanciada, sea verdadero si Y es mayor o igual que X, y si no lo está genere todos los Y de X en adelante
desde(X, X).
desde(X, Y):- nonvar(Y), Y > X.
desde(X, Y):- var(Y), X1 is X+1, desde(X1, Y).