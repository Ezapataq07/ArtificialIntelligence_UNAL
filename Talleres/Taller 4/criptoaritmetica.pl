solucion(C,R,O,S,A,D,N,G,E):-
    digitos_unicos(C,R,O,S,A,D,N,G,E), S>0, R is (S+S) mod 10, C1 is (S+S) // 10,
    E is (S+D+C1) mod 10, C2 is (S+D+C1) // 10, G is (O+A+C2) mod 10, C3 is (O+A+C2) // 10,
    N is (R+O+C3) mod 10, C4 is (R+O+C3) // 10, A is (C+R+C4) mod 10, C5 is (C+R+C4) // 10,
    D is C5, D=<9.

digitos_unicos(C,R,O,S,A,D,N,G,E):-
    dig(S), dig(R), \+ R=S, dig(D), \+ R=D,\+ D=S, dig(E), \+ E=D, \+ E=S, \+ E=R,
    dig(O), \+ O=S, \+ O=R, \+ O=E,\+ O=D, dig(A), \+ A=R,\+ A=S,\+ A=D,
    \+ A=E,\+ A=O, dig(G),\+ G=S,\+ G=R,\+ G=D,\+ G=E,\+ G=O,\+ G=A, dig(N),
    \+ N=S,\+ N=R,\+ N=D,\+ N=E,\+ N=O,\+ N=A,\+ N=G, dig(C), \+ C=S,
    \+ C=R,\+ C=D,\+ C=E,\+ C=O,\+ C=A,\+ C=G,\+ C=N.

dig(0). dig(1). dig(2). dig(3). dig(4).
dig(5). dig(6). dig(7).
dig(8). dig(9).


