padre(juan, carlos).
padre(juan, luis).
padre(carlos, daniel).
padre(carlos, diego).
padre(luis, pablo).
padre(luis, manuel).
padre(luis, ramiro).
padre(ramiro, toto).
abuelo(X,Y) :- padre(X,Z), padre(Z,Y).



% i. resultado de abuelo(C, manuel)? C:= juan.
% ii. definir hijo, hermano y descendiente.

hijo(X,Y) :- padre(Y,X).

hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.

descendiente2(X, Y) :- padre(Y, X).
descendiente2(X, Y) :- padre(Z, X), descendiente2(Z, Y).

% iv. Qué consulta habría que hacer para encontrar a los nietos de juan?

% ?- abuelo(juan, A).
% A = daniel ;
% A = diego ;
% A = pablo ;
% A = manuel ;
% A = ramiro.

% v. Cómo se puede definir una consulta para conocer a todos los hermanos de pablo?
hermanos(Z, X) :-  setof(X, hermano(Z, X), L), member(X, L).

% vi. Considerar el agregado del siguiente hecho y regla
%ancestro(X, X).
%ancestro(X, Y) :- ancestro(Z, Y), padre(X, Z).

% vii. Explicar la respuesta a la consulta ancestro(juan, X). ¿Qué sucede si se pide más de un resultado? 
% devuelve a todos los que son descendientes de juan y a juan mismo. Una vez que termina se cuelga.

%ancestro(X, Y) :- ancestro(Z, Y), padre(X, Z).
ancestro(X,Y) :- padre(X,Y).
ancestro(X,Y) :- padre(X, Z), ancestro(Z, Y).