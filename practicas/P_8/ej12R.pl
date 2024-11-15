% i. inorder(+AB,-Lista), que tenga éxito si AB es un árbol binario y Lista la lista de sus nodos según el recorrido inorder.
inorder2(nil, []).
%inorder(bin(nil, V, nil), [V]).
inorder2(bin(I, V, D), L):- inorder2(I, IL), inorder2(D, DL), append(IL, [V|DL], L).


% bin(bin(bin(nil, O, nil), L, bin(nil, D, nil)), A, bin(bin(nil, A, nil), G, bin(bin(nil, L, nil), I, bin(nil, Y, nil)))).
%arbolConInorder([], nil).
%arbolConInorder(L, bin(I, V, D)):-  

% [1, 2, 3] -> bin(bin(nil 1 nil), 2, bin(nil, 3, nil)).

% iii. aBB(+T), que será verdadero si T es un árbol binario de búsqueda.
aBB(nil).
aBB(bin(nil, _, nil)).
aBB(bin(I, V, D)):- raiz(I, RI), raiz(D, RD), V > RI, V < RD, aBB(I), aBB(D).

% iv. aBBInsertar(+X, +T1, -T2), donde T2 resulta de insertar X en orden en el árbol T1. 
% Este predicado es reversible en alguno de sus parámetros? Justificar.

% aBBInsertar(X, nil, bin(nil, X, nil)).
% aBBInsertar(X, bin(I, V, D), A):- raiz(I, RI), X < RI, 