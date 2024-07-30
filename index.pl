% Facts
% Generation 1
male(musye).
female(alice).
male(kamau).
female(margret).

% Generation 2
female(maria).
female(elizabeth).
female(phoeth).
male(dominique).
male(richard).
female(rehema).
female(annabelle).
female(betty).
male(robert).

% Generation 3
male(Arthur).
female(Jazmin).

% Generation 4
female(minnie).

% Parent-child relationships
% Maria's side
parent(musye, maria).
parent(alice, maria).
parent(musye, elizabeth).
parent(alice, elizabeth).
parent(musye, phoeth).
parent(alice, phoeth).
parent(musye, dominique).
parent(alice, dominique).

% Richard's side
parent(kamau, richard).
parent(margret, richard).
parent(kamau, rehema).
parent(margret, rehema).
parent(kamau, annabelle).
parent(margret, annabelle).
parent(kamau, betty).
parent(margret, betty).
parent(kamau, rehema).
parent(margret, rehema).
parent(kamau, robert).
parent(margret, robert).

% Arthur and Jazmin
parent(richard, arthur).
parent(maria, arthur).
parent(richard, jazmin).
parent(maria, jazmin).

% Jazmin's daughter
parent(jazmin, minnie).

% Rules
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).

grandparent(X, Y) :- parent(X, Y), parent(Z, Y).
grandfather(X, Y) :- male(X), grandparent(Z, Y).
grandmother(X, Y) :- female(X), grandparent(Z, Y).

sibling(X, Y) :- parent(Z, X), parent(Z, Y), X \= Y.
brother(X, Y) :- male(X), sibling(X, Y).
sister(X, Y) :- female(X), sibling(X, Y).