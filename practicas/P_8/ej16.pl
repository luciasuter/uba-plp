frutal(frutilla).
frutal(banana).
frutal(manzana).
cremoso(banana).
cremoso(americana).
cremoso(frutilla).
cremoso(dulceDeLeche).

% leGusta(X) :- !, frutal(X), cremoso(X). no corta nada
% leGusta(X) :- frutal(X), !, cremoso(X). solo unifica X con Y e Y con frutilla
% leGusta(X) :- frutal(X), cremoso(X), !. idem anterior
leGusta(X) :- frutal(X), cremoso(X).
cucurucho(X,Y) :- leGusta(X), !, leGusta(Y).  % mejor sol (no repite).
%cucurucho(X,Y) :- leGusta(X), !, leGusta(Y). unifica X con Y e Y con frutilla y tmb X = frutilla, Y = banana.
%cucurucho(X,Y) :- leGusta(X), leGusta(Y), !. unifica X con Y e Y con frutilla.
