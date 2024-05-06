
del(X,L,R):- []=L,[]=R.
del(X,L,R):- [Y|K] = L, [Y|M] = R, del(X,K,M), (Y\=X).
del(X,L,R):- [X|K] = L, [Y|M] = R, del(X,K,R),(Y\=X).