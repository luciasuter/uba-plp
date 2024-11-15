% intercalar([a,b,c], [d,e], [a,d,b,e,c]).
%intercalar(L1+, L2+, L3-)
intercalar([], L, L).
intercalar(L, [], L).
intercalar([X|L1], [Y|L2], L3):- intercalar(L1, L2, L), append([X, Y], L, L3).

% intercalar es reversible tanto en L1 como en L2 o sea:
% intercalar(?L1, +L2, +L3)
% intercalar(+L1, ?L2, +L3)