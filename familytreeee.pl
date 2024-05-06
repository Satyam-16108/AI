male(ram).
male(john).
male(love).
male(jamal).
male(alex).
female(sita).
female(kushi).
parent(ram,love).
parent(sita,love).
parent(ram,kushi).
parent(sita,kushi).
parent(love,john).
parent(love,jamal).
parent(jamal,alex).
married(ram,sita).

grandparent(X,Z):-parent(X,Y),parent(Y,Z).
father(X,Y):-male(X),parent(X,Y).
mother(X,Y):-female(X),parent(X,Y).
brother(X,Y):-male(X),parent(Z,X),parent(Z,Y).
sister(X,Y):-female(X),parent(Z,X),parent(Z,Y).
sibling(X,Y):-parent(Z,X),parent(Z,Y).
uncle(X,Z):-male(X),parent(Y,Z),brother(X,Y).
aunt(X,Z):-female(X),parent(Y,Z),sister(X,Y).
husband(X,Y):-male(X),female(Y),married(X,Y).
wife(X,Y):-female(X),male(Y),married(X,Y).





