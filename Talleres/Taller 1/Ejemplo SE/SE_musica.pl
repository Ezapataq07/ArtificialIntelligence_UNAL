/* Adaptado de: https://github.com/thechaudharysab/LearningProlog */

sugerir(Cancion) :- write('¿Cuál es tu tipo de personalidad?: '), read(Personalidad),
    write('¿Estas feliz o triste?: '), read(Animo),
    write('En este momento te recomiendo la siguiente canción: '),
    recomendar(Cancion,_,Animo,Personalidad).

/*Sugerencias para estado de animo alegre*/
recomendar('https://www.youtube.com/watch?v=c8YIlU_30Kk',jazz,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per1; Personalidad=per7; Personalidad=per8).

recomendar('https://www.youtube.com/watch?v=SsZRci3sA4I',classical,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per1; Personalidad=per2; Personalidad=per3; Personalidad=per5).

recomendar('https://www.youtube.com/watch?v=XYk2kt8K6E0',electronica,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per1; Personalidad=per15; Personalidad=per8).

recomendar('https://www.youtube.com/watch?v=VguED7BfpgU',metal,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per2; Personalidad=per13; Personalidad=per4; Personalidad=per15).

recomendar('https://www.youtube.com/watch?v=5f-wQBh-zbQ',alternative_rock,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per2; Personalidad=per3; Personalidad=per5; Personalidad=per6;
                   Personalidad=per9; Personalidad=per10; Personalidad=per13).

recomendar('https://www.youtube.com/watch?v=lPIiB02uqXM',rock,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per3; Personalidad=per4; Personalidad=per6;
                   Personalidad=per9; Personalidad=per10).

recomendar('https://www.youtube.com/watch?v=PIfJ7nYQFTM',punk,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per4; Personalidad=per6; Personalidad=per13).

recomendar('https://www.youtube.com/watch?v=eWyeAIlaYUY',world,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per5; Personalidad=per7).

recomendar('https://www.youtube.com/watch?v=qAqKsw4GjB0',blues,Animo,Personalidad):-
    Animo = feliz, Personalidad=per7.

recomendar('https://www.youtube.com/watch?v=w47D1Fqn_sA',ambient,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per8; Personalidad=per14; Personalidad=per16).

recomendar('https://www.youtube.com/watch?v=HA06Rr3bRVc',pop_songs,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per9; Personalidad=per11; Personalidad=per14; Personalidad=per16).

recomendar('https://www.youtube.com/watch?v=qCZAynQU_-8',religious,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per10; Personalidad=per11).

recomendar('https://www.youtube.com/watch?v=hvVPMIqRulE',hip_hop,Animo,Personalidad):-
    Animo = feliz, (Personalidad=per11; Personalidad=per15; Personalidad=per16).

recomendar('https://www.youtube.com/watch?v=X7ses5rI5U4',soul,Animo,Personalidad):-
    Animo = feliz, Personalidad=per12.

recomendar('https://www.youtube.com/watch?v=NKzyyxvNiFc',country,Animo,Personalidad):-
    Animo = feliz, Personalidad=per12.

recomendar('https://www.youtube.com/watch?v=oWQpQW95Ru8',reggae,Animo,Personalidad):-
    Animo = feliz, Personalidad=per14.

/*Sugerencias para estado de animo triste*/
recomendar('https://www.youtube.com/watch?v=McxPJ3RYY4Y',jazz,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per1); Personalidad=(per7); Personalidad=(per8)).

recomendar('https://www.youtube.com/watch?v=R6OElQVVlLo',classical,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per1); Personalidad=(per2); Personalidad=(per3);
                    Personalidad=(per5)).

recomendar('https://www.youtube.com/watch?v=ilTbMVG5t6M',electronica,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per1); Personalidad=(per15); Personalidad=(per8)).

recomendar('https://www.youtube.com/watch?v=SWkKvDD-Gu4',metal,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per2); Personalidad=(per13); Personalidad=(per4);
                    Personalidad=(per15)).

recomendar('https://www.youtube.com/watch?v=-fvBrKeobyA',alternative_rock,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per2); Personalidad=(per3); Personalidad=(per5);
                    Personalidad=(per6); Personalidad=(per9); Personalidad=(per10);
                    Personalidad=(per13)).

recomendar('https://www.youtube.com/watch?v=qGxO2YNFj1o',rock,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per3); Personalidad=(per4); Personalidad=(per6);
                    Personalidad=(per9); Personalidad=(per10)).

recomendar('https://www.youtube.com/watch?v=2MRdtXWcgIw',punk,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per4); Personalidad=(per6); Personalidad=(per13)).

recomendar('https://www.youtube.com/watch?v=F90ymkS2dt4',world,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per5); Personalidad=(per7)).

recomendar('https://www.youtube.com/watch?v=6R9nWRWgl90',blues,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per7)).

recomendar('https://www.youtube.com/watch?v=sbX_aElB2dI',ambient,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per8); Personalidad=(per14); Personalidad=(per16)).

recomendar('https://www.youtube.com/watch?v=T8-96tqFCFU&vl=en',pop_songs,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per9); Personalidad=(per11); Personalidad=(per14);
                    Personalidad=(per16)).

recomendar('https://www.youtube.com/watch?v=K_-e99oLp4Y',religious,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per10); Personalidad=(per11)).

recomendar('https://www.youtube.com/watch?v=0pZmHnj3-jQ',hip_hop,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per11); Personalidad=(per15); Personalidad=(per16)).

recomendar('https://www.youtube.com/watch?v=KVIwQFEyZQE',soul,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per12)).

recomendar('https://www.youtube.com/watch?v=ygxmpkHgaC8',country,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per12)).

recomendar('https://www.youtube.com/watch?v=FqQjAUB6DJY',reggae,Animo,Personalidad):-
    Animo = triste, (Personalidad= (per14)).
