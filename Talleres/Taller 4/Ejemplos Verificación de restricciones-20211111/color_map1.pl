/* la meta es colorear los países del mapa usando la mínima cantidad
 * de colores posible, de tal forma que las zonas con fronteras en 
 * común no pueden tener el mismo color */

% Se puede correr usando "solucion(A,B,C,D,E)." o "mostrar_colores."

/* Primero se generan valores para todas las variables y
 * luego se prueba el cumplimiento de restricciones, haciendo
 * backtracking cuando no se cumplen (generate-and-test) */

solucion(A,B,C,D,E) :-
    color_zona(A), color_zona(B), color_zona(C),
    color_zona(D), color_zona(E),
    \+ A=B, \+ A=C, \+ A=D, \+ A=E, \+ B=C, \+ C=D, \+ D=E.

% Un poco más eficiente (va generando y verificando).
/*
solucion(A,B,C,D,E) :-
    color_zona(A), color_zona(B), \+ A=B, color_zona(C), \+ A=C, \+ B=C,
    color_zona(D), \+ A=D, \+ C=D, color_zona(E), \+ A=E, \+ D=E.
*/

% Estos son los colores a usar. ¿Qué sucede si tengo más o menos colores?
color_zona(rojo).
color_zona(negro).
color_zona(azul).

mostrar_colores :-
    solucion(A,B,C,D,E), nl,
    write('El país A está pintado de color '), write(A), nl,
    write('El país B está pintado de color '), write(B), nl,
    write('El país C está pintado de color '), write(C), nl,
    write('El país D está pintado de color '), write(D), nl,
    write('El país E está pintado de color '), write(E), nl.