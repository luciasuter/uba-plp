%?- corteMásParejo([1,2,3,4,2],L1,L2). → L1 = [1, 2, 3], L2 = [4, 2] ; false.
%?- corteMásParejo([1,2,1],L1,L2). → L1 = [1], L2 = [2, 1] ; L1 = [1, 2], L2 = [1] ; false.

corteMasParejo(L, L1, L2):- corteX(L, LL1, LL2), append(L1, L2, L), sumlist(LL1, X), sumlist(L2, X), length(L2, Z), Z > 0.
corteX(L, L1, L2):- append(L1, L2, L), sumlist(L1, C1), sumlist(L2, C2), sumlist(L, X), X is C1+C2, length(L2, Z), Z > 0.