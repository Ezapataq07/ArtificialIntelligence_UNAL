/* Recolección de Datos */
sugerir :- write('Ingresa el Nivel de Congestión inferido por el FIS (Decimal separado por punto):'), read(Congestion),
    					write('Ingresa el Porcentaje sobre el tiempo óptimo inferido por el FIS (en %):'), read(Porcentaje),
    					write('¿Cuál es la distancia del recorrido? (en kilometros)'), read(Distancia),
    					write('¿Cuál es el tiempo óptimo del recorrido? (en minutos y considerando un recorrido en carro)'), read(Tiempo),
    					write('¿Está lloviendo? Responda si o no'), read(Clima),
    					write('¿Cuál es la pendiente máxima que presenta el recorrido? (en °)'), read(Pendiente), 
    					writeln('Se proporcionará información del valor de la huella de carbono que imprime el uso de los medios
                                 de transporte recomendados. Esta indica el impacto ambiental que conlleva movilizarse
                                 con dicho vehículo'), nl,
    					recomendar(Congestion,Porcentaje,Distancia, Tiempo, Clima, Pendiente).

/* Sugerencia de Vehículo y su impacto a la huella de carbono*/
recomendar(Congestion,Porcentaje,Distancia,Tiempo,Clima,Pendiente) :-Congestion=<6,
    (Distancia>=4;(Distancia<4,Clima=si);(Distancia<4,Pendiente>=15)),Huella is Distancia*171,T is Tiempo*Porcentaje/100,
    write('Se recomienda viajar en CARRO, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(Congestion,Porcentaje,Distancia,Tiempo,Clima,Pendiente) :- Congestion=<6,
    (Distancia>=4;(Distancia<4,Clima=si);(Distancia<4,Pendiente>=15)),Huella is Distancia*50,T is Tiempo*Porcentaje/100,
    write('Se recomienda viajar en CARRO ELÉCTRICO, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es menor a '),write(Huella),writeln(' gCO2').

recomendar(Congestion,Porcentaje,Distancia,Tiempo,Clima,Pendiente) :- Congestion=<6,
    (Distancia>=4;(Distancia<4,Clima=si);(Distancia<4,Pendiente>=15)),Huella is Distancia*68,T is Tiempo*Porcentaje/100,
    write('Se recomienda viajar en BUS, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(_,_,Distancia,_,_,_) :-Distancia>=5,Huella is Distancia*14,T is Distancia*3/2,
     write('Se recomienda viajar en METRO, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(Congestion,Porcentaje,Distancia,Tiempo,Clima,Pendiente) :- Congestion=<8.5, Clima=no,
    (Distancia>=4;(Distancia<4,Pendiente>=15)),Huella is Distancia*72,T is Tiempo*(Porcentaje-15)/100,
    write('Se recomienda viajar en MOTO, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(Congestion,Porcentaje,Distancia,Tiempo,Clima,Pendiente) :- Congestion=<8.5, Clima=no,
    (Distancia>=4;(Distancia<4,Pendiente>=15)),Huella is Distancia*40,T is Tiempo*(Porcentaje-15)/100,
    write('Se recomienda viajar en MOTO ELÉCTRICA, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(Congestion,_,Distancia,_,Clima,Pendiente) :- ((Congestion>=9,Distancia=<6,Distancia>=4);(Distancia>=1,Distancia=<4)),
    Clima=no, 
    Pendiente=<15, Huella is 0,T is Distancia*10/3,
    write('Se recomienda viajar en BICICLETA, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(_,_,Distancia,_,Clima,Pendiente) :- Distancia=<35,Clima=no, Pendiente=<15,
    Huella is Distancia*4.6,T is Distancia*12/5,
    write('Se recomienda viajar en SCOOTER ELÉCTRICA, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(_,_,Distancia,_,Clima,_) :- Distancia=<1,Clima=no, Huella is 0,
    T is Distancia*12,
    write('Se recomienda viajar A PIE, '),
    write('el tiempo estimado del recorrido el recorrido es '), write(T),write(' minutos'),
    write(' y el valor de la huella de carbono es '),write(Huella),writeln(' gCO2').

recomendar(_,_,Distancia,_,_,_) :- writeln('Se invita fervorosamente a emplear el medio de transporte que menos impacto tenga sobre el medio 
                                            ambiente, teniendo en cuenta la siguiente infromación')
    ,nl,writeln('EMISIONES DE C02 PARA TU RECORRIDO SEGÚN EL MEDIO DE TRANSPORTE (en gCO2)'),
    HPie is 0, HBici is 0, HScooter is Distancia*4.6, HMetro is Distancia*14, HMotoE is Distancia * 40, HCarroE is Distancia*50,
    HBus is Distancia*68, HMoto is Distancia*72, HCarro is Distancia*171,
    write('PIE						'),writeln(HPie),
    write('BICICLETA				'),writeln(HBici),
	write('SCOOTER					'),writeln(HScooter),
    write('METRO					'),writeln(HMetro),
    write('MOTO ELÉCTRICA			'),writeln(HMotoE),
    write('CARRO ELÉCTRICO			'),writeln(HCarroE),
    write('BUS						'),writeln(HBus),
    write('MOTO						'),writeln(HMoto),
    write('CARRO					'),writeln(HCarro).
        

