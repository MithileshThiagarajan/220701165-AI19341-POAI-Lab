% Gender Facts 
%Gender Facts
male(mitu). 
male(sonu). 
male(john). 
male(paul). 
female(niru). 
female(susi). 
female(maha). 
female(gita). 
% Parent Facts 
parent(mitu, niru). 
parent(sonu, susi). 
parent(john, maha). 
parent(john, gita). 
parent(sonu, maha). 
parent(paul, gita). 
% Rules 
% Sibling relationship 
sibling(X, Y) :- 
parent(Z, X), 
parent(Z, Y), 
X \= Y. 
% Grandparent relationship 
grandparent(X, Y) :- 
parent(X, Z), 
parent(Z, Y). 
% Aunt or Uncle relationship 
aunt_or_uncle(X, Y) :- 
sibling(X, Z), 
parent(Z, Y). 
% Cousin relationship 
cousin(X, Y) :- 
parent(Z, X), 
parent(W, Y), 
sibling(Z, W). 
