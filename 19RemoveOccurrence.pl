/* Remove All Duplicates */
duplicate([],[]).
duplicate([H|T],R) :- member(H,T),!, duplicate(T,R).
duplicate([H|T],[H|R]):- duplicate(T,R).


/* Remove Occurrence of Particular Element */
del_dup(X,[],[]):- !.
del_dup(X,L,R):- [Y|K] = L, [Y|M] = R, del_dup(X,K,M), (Y\=X).
del_dup(X,L,R):- [X|K] = L, [Y|M] = R, del_dup(X,K,R), (Y\=X).