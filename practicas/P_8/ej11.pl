%nil(vacio).
%bin(izq, v, der).

%vacio hecho
vacio(nil).

%raiz
raiz(bin(_, V, _), V).

%altura
altura(nil, 0).
altura(bin(I, _, D), Y):-  altura(I, AI), altura(D, DI), Y is 1+ max(AI, DI).

cantidadDeNodos(nil, 0).
cantidadDeNodos(bin(I, _, D), Y):- cantidadDeNodos(I, IC), cantidadDeNodos(D, DC), Y is IC + DC + 1.