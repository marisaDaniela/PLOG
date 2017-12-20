% Poiting at the crowd
/* Exemplos de tabuleiros com tamanhos variaveis */
board4L([ 
[0,0,0,0],
[0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0],
[0,0,0,0]]).
		
board5L([ 
[0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0],
[0,0,0,0,0,0],
[0,0,0,0,0]]).
		
board10L([ 
[0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0,0,0]]).
		
% imprime recursivamente as linhas do tabuleiro
lines(_,[]).
lines(N,[L|Ls]):-
	write(N), write('.'),show_line(L), nl,
	N1 is N+1,
	lines(N1, Ls).



% imprime recursivamente os caracteres de cada linha do tabuleiro
show_line([]).
show_line([El|Es]):-
	translate(El),
	show_line(Es).


	
% imprime o tabuleiro	
printBoard4L(Board):- 
		 %board4L(Board), 
		%lines(1,Board),nl,!.
	printSpace(10),write('__'),nl,
	printSpace(7), writeSeqTop, write('__'),nl,
	printSpace(4), writeSeqTop, writeSeqTop, write('__'),nl,
	printSpace(1), writeSeqTop, writeSeqTop, writeSeqTop, write('__'),nl,
	writeBeg, writeSeqTop ,writeSeqTop, writeSeqTop, nl,
	writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	writeBeg, writeSeqTop ,writeSeqTop, writeSeqTop, nl,
        writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	writeBeg, writeSeqTop ,writeSeqTop, writeSeqTop, nl,
        writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	writeBeg, writeSeqTop ,writeSeqTop, writeSeqTop, nl,
        writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	printSpace(3), writeSeqBottom, writeSeqBottom, writeEnd, nl,
	printSpace(6), writeSeqBottom, writeEnd, nl,
	printSpace(9), writeEnd, nl.
	
	

printBoard5L(Board):- 
		board5L(Board), 
		lines(1,Board),nl,!.
		
printBoard10L(Board):- 
		board10L(Board), 
		lines(1,Board),nl,!.