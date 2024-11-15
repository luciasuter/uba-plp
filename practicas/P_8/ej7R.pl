%Defnir los siguientes predicados, usando member y/o append según sea conveniente:
%i. intersección(+L1, +L2, -L3), tal que L3 es la intersección sin repeticiones de las listas L1 y L2, 
%respetando en L3 el orden en que aparecen los elementos en L1. 
% partir(N, L, L1, L2), donde L1 tiene %los N primeros elementos de L, y L2 el resto. Si L tiene menos de N elementos el 
%predicado debe fallar. Cuán reversible es este predicado? Es decir, ¿qué parámetros pueden estar indefinidos al momento de la invocación?

%%%%%%%% interseccion mal %%%%%%%%
interseccion([], _, []).
interseccion([X|L1], L2, L3):- not(member(X, L2)), interseccion(L1, L2, LL), append([], LL, L3).
interseccion([X|L1], L2, L3):- member(X, LL2), list_to_set(L2, LL2), interseccion(L1, LL2, LL), append([X], LL, L3).

%%%%%%%% partir mal %%%%%%%%
%% se me rompe este caso partir(N, [1,2,3,4,5,6,7,8,9], K, [5,6,7,8,9]). y tambien
%% se rompe partir(P, Q, [1,2,3,4], [5,6,7,8,9]). ambos casos se cuelgan

partir(N, L, L1, L2):-  length(L1, N), length(L, LL), LL > N, NN is LL - N, length(L2, NN), append(L1, L2, L).


%ii. borrar(+ListaOriginal, +X, -ListaSinXs), que elimina todas las ocurrencias de X de la lista ListaOriginal.
borrar([], _, []).
borrar([X|L1], X, L2):- borrar(L1, X, L2).
borrar([X|L1], Y, [X|L2]):- X \= Y, borrar(L1, Y, L2).

%iii. sacarDuplicados(+L1, -L2), que saca todos los elementos duplicados de la lista L1
sacarDuplicados([], []).
sacarDuplicados([X|L1], L3):- sacarDuplicados(L1, LL), borrar(LL, X, L2), append([X], L2, L3).

%iv. permutación(+L1, ?L2), que tiene éxito cuando L2 es permutación de L1. ¾Hay una manera más eficiente de definir este predicado para cuando L2 está instanciada?
% perm [1,2,3] = [1,2,3],[1,3,2], [2,1,3], [2,3,1], [3,1,2], [3,2,1]
%

%tieneATodos([], []).
%tieneATodos([X], L2):- member(X, L2).
%tieneATodos([X|L], L2):- member(X, L2), tieneATodos(L, L2).
%
%tieneOtros([], []).
%tieneOtros([X], L2):- not(member(X, L2)).
%tieneOtros([X|L], L2):- not(member(X, L2)), tieneOtros(L, L2).

%permutacion([], []).
%permutacion(L, [X|L2]):- tieneATodos(X, L), not(tieneOtros(X, L)), length(L, LL), length(L2, LL), permutacion(L, L2).

%%%%%%%% permutación mal %%%%%%%%
%permutacion([], []).
%permutacion([X|L], L2):- permutacion(L, L3)

%v. reparto(+L, +N, -LListas) que tenga éxito si LListas es una lista de N listas (N ≥ 1) de cualquier longitud - incluso vacías - tales que al concatenarlas se obtiene la lista L.
reparto([], 0, []). % caigo aca?
reparto(L, N, [X|Xs]):- 
    N>0, % N >= 1 
    append(X, L2, L), % Armo L tal que sea X la lista del principio, L2 la lista con la recursion y L. 
    NN is N-1, % calculo N en la recursion (NN)
    reparto(L2, NN, Xs). % paso recursivo L2 es L sin X (primera sub lista), con NN un paso menos que N y la lista de sublistas Xs

%%%%%%%% rSV hacer %%%%%%%%
%vi. repartoSinVacías(+L, -LListas) similar al anterior, pero ninguna de las listas de LListas puede ser vacía, y la longitud de LListas puede variar