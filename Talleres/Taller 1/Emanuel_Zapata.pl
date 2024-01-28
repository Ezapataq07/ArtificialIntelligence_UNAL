
/* Sistema Recomendador de Canales Educativos de Youtube */

sugerir(Canal) :- write('¿Quieres estudiar Física (f), Química (q) o Electrónica (e)?: '), read(Materia),
					write('¿Te gusta el contenido español, latino o inglés?: '), read(Idioma),
    				write('Podrías ver el siguiente canal: '),
				    recomendar(Canal, Materia, Idioma).



recomendar('Date un Vlog',Materia,Idioma):- Materia = f, Idioma = español.
recomendar('Quantum Fracture',Materia,Idioma):- Materia = f, Idioma = español.
recomendar('CdeCiencia',Materia,Idioma):- (Materia = f, Idioma = español);(Materia = q, Idioma = español).

recomendar('El Robot de Platón',Materia,Idioma):- Materia = f, Idioma = latino.
recomendar('Cesas Antonio Izquierdo Merlo',Materia,Idioma):- Materia = f, Idioma = latino.
recomendar('El Traductor de Ingeniería',Materia,Idioma):- (Materia = f, Idioma = latino);(Materia = e, Idioma = latino).

recomendar('3Blue1Brown',Materia,Idioma):- Materia = f, Idioma = inglés.
recomendar('StarTalk',Materia,Idioma):- Materia = f, Idioma = inglés.
recomendar('Veritasium',Materia,Idioma):- (Materia = f, Idioma = inglés);(Materia = q, Idioma = inglés).

recomendar('Date un Voltio',Materia,Idioma):- Materia = q, Idioma = español.
recomendar('Quimiclan',Materia,Idioma):- Materia = q, Idioma = español.

recomendar('Quimiayudas',Materia,Idioma):- Materia = q, Idioma = latino.
recomendar('Educatina',Materia,Idioma):- Materia = q, Idioma = latino.
recomendar('A Cierta Ciencia',Materia,Idioma):- Materia = q, Idioma = latino.

recomendar('CrashCourse',Materia,Idioma):- Materia = q, Idioma = inglés.
recomendar('DoS',Materia,Idioma):- Materia = q, Idioma = inglés.

recomendar('Mentalidad de Ingeniería',Materia,Idioma):- Materia = e, Idioma = español.
recomendar('Electrónica FP',Materia,Idioma):- Materia = e, Idioma = español.
recomendar('Editronikx',Materia,Idioma):- Materia = e, Idioma = español.

recomendar('VirtualBrain',Materia,Idioma):- Materia = e, Idioma = latino.
recomendar('Les Ingenieurs',Materia,Idioma):- Materia = e, Idioma = latino.

recomendar('The Engineering Mindset',Materia,Idioma):- Materia = e, Idioma = inglés.
recomendar('Lesics',Materia,Idioma):- Materia = e, Idioma = inglés.
recomendar('CircuitBread',Materia,Idioma):- Materia = e, Idioma = inglés.

























