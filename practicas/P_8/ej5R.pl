%i. last(?L, ?U), donde U es el último elemento de la lista L.
ultimo([X], X).
ultimo([_|L], Y) :- ultimo(L, Y).

%ii. reverse(+L, -L1), donde L1 contiene los mismos elementos que L, pero en orden inverso. Ejemplo: reverse([a,b,c], [c,b,a]). Mostrar el árbol de búsqueda para el ejemplo dado.
%reversa([], []).
reversa([X], [X]).
reversa([X|L], L1) :- reversa(L, L3), append(L3, [X], L1).

%iii. prefijo(?P, +L), donde P es prefijo de la lista L.
prefijo(P, L) :- append(P, _, L).

%iv. sufijo(?S, +L), donde S es sufijo de la lista L.
sufijo(S, L) :- append(_, S, L).

%v. sublista(?S, +L), donde S es sublista de L.
%FALTAAAAsublista(S, L) :-  

%vi. pertenece(?X, +L), que es verdadero sii el elemento X se encuentra en la lista L. (Este predicado ya viene definido en Prolog y se llama member).

pertenece(X, [X|_]).
pertenece(X, [_|T]) :- pertenece(X, T).  