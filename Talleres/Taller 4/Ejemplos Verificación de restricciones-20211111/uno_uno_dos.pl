% UNO+UNO=DOS. Para correrlo use "solucion(U,N,O,D,S)."
solucion(U,N,O,D,S) :-
    digitos_unicos(U,N,O,D,S), O>0,
    S is (O+O) mod 10, C1 is (O+O) // 10,
    O is (N+N+C1) mod 10, C2 is (N+N+C1) // 10,
    /*no necesitamos residuo. El total de U+U+C2
     * debe ser menor o igual que 9 para que no 
     * haya un cuarto digito en el resultado*/
    D is (U+U+C2), D =< 9.

digitos_unicos(U,N,O,D,S) :-
    dig(U), dig(N), dig(O), dig(D), dig(S),
    \+ U=N, \+ U=O, \+ U=D, \+ U=S,
    \+ N=O, \+ N=D, \+ N=S,
    \+ O=D, \+ O=S,
    \+ D=S.

dig(0). dig(1). dig(2). dig(3). dig(4).
dig(5). dig(6). dig(7). dig(8). dig(9).

/* La forma en la que estan planteadas las restricciones
 * y las operaciones aritméticas es bastante ineficiente.
 * Para un problema donde el espacio de búsqueda sea mas
 * grande es probable que el programa corra por un largo
 * tiempo antes de encontrar una solución. */