%aplanar([a, [3, b, []], [2]], L).→ L=[a, 3, b, 2]
aplanar([], []).
aplanar([X|L], LL) :- not(is_list(X)), aplanar(L, L2), append([X], L2, LL). 
aplanar([X|L], LL) :- is_list(X), aplanar(X, LX), aplanar(L, L2), append(LX, L2, LL).

% preguntar si esta bien, si mal no recuerdo en el cuatri anterior la sol estaba mal y aca lo hice igual 
% porque habia entendido mal el enunciado 