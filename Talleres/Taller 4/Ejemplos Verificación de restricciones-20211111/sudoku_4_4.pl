% sudoku(...). Resuelve el juego e imprime la respuesta.
% la variable Rij representa el numero en la fila i y la columna j.
sudoku(R11,R12,R13,R14,R21,R22,R23,R24,R31,R32,R33,R34,
       R41,R42,R43,R44) :-
    solution(R11,R12,R13,R14,R21,R22,R23,R24,R31,R32,R33,R34,
             R41,R42,R43,R44),
    nl, write('A solution to this puzzle is'), nl,
    printrow(R11,R12,R13,R14), printrow(R21,R22,R23,R24),
    printrow(R31,R32,R33,R34), printrow(R41,R42,R43,R44).

% Imprime fila de cuatro numeros con espacios entre ellos.
printrow(P,Q,R,S) :- write(' '), write(P), write(' '), write(Q),
    write(' '), write(R), write(' '), write(S), nl.
%------------------------------------------------------------------
solution(R11,R12,R13,R14,
         R21,R22,R23,R24,
         R31,R32,R33,R34,
         R41,R42,R43,R44) :-
    
    % valores unicos por fila
    uniq(R11,R12,R13,R14), % fila 1
    uniq(R21,R22,R23,R24), % fila 2
    uniq(R31,R32,R33,R34), % fila 3
    uniq(R41,R42,R43,R44), % fila 4
    
    % valores unicos por columna
    uniq(R11,R21,R31,R41), % col 1
    uniq(R12,R22,R32,R42), % col 2
    uniq(R13,R23,R33,R43), % col 3
    uniq(R14,R24,R34,R44), % col 4
    
    % valores unicos por cuadrante
    uniq(R11,R12,R21,R22), % cuadrante sup-izq
    uniq(R13,R14,R23,R24), % cuadrante sup-der
    uniq(R31,R32,R41,R42), % cuadrante inf-izq
    uniq(R33,R34,R43,R44). % cuadrante inf-der

% uniq se cumple si P,Q,R,S son numeros distintos del dominio
uniq(P,Q,R,S) :- num(P), num(Q), num(R), num(S),
    \+ P=Q, \+ P=R, \+ P=S, \+ Q=R, \+ Q=S, \+ R=S.

% los cuatro valores que pueden ir en las celdas (dominio)
num(1). num(2). num(3). num(4).

/*
Verificar como varia el tiempo de ejecución
al reducir el espacio de búsqueda.

sudoku(
_, _, _, _,
_, _, _, _,
_, _, _, _,
_, _, _, _
).

sudoku(
1, 4, _, _,
_, _, 4, _,
2, _, _, _,
_, _, _, 3
).

sudoku(
_, 2, 4, _,
1, _, 2, 3,
4, _, _, 2,
_, 1, 3, _
).
*/