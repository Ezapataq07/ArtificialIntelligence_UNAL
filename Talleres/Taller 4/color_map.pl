solucion(A,B,C,D,E,F,G,H,I) :-
    color_zona(A), color_zona(B), \+ A=B, color_zona(C), \+ A=C, \+ B=C,
    color_zona(D), \+ B=D, \+ C=D, color_zona(E), \+ D=E,\+ E=B,color_zona(F), 
    \+ D=F,\+ E=F, \+ F=C, color_zona(G), \+ G=E, \+ G=F, color_zona(H),\+ H=G,\+ H=F,
    color_zona(I),\+ I=H,\+ I=F.


% Estos son los colores a usar. ¿Qué sucede si tengo más o menos colores?
color_zona(rojo).
color_zona(azul).
color_zona(morado).

