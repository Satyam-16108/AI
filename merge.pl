merge([],L2,l2).
merge(L1,[],L1).
merge([H1|T1],[H2|T2],[H1|R]):-H1=<H2,merge(T1,[H2|T2],R).
merge([H1|T1],[H2|T2],[H1|R]):-H1>H2,merge([H1|T1],T2,R).
