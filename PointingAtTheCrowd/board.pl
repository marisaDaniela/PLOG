% Poiting at the crowd
/* Exemplos de tabuleiros com tamanhos variaveis */
board4L([ 
[0],
[0,0],
[0,0,0],
[0,0,0,0],
[0,0,0],
[0,0,0,0],
[0,0,0],
[0,0,0,0],
[0,0,0],
[0,0,0,0],
[0,0,0],
[0,0],
[0]]).
		
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

%imprime os símbolos daquela linha
print_symbols(N, Counter, [Line|Resto]):-
	Counter<N,
	writeSeqTop(Line),
	NewCounter is Counter+1,
	print_symbols(N, NewCounter, Resto).
print_symbols(N, Counter, []).

print_symbols2(N, Counter, [Line|Resto]):-
        Counter<N,
        writeSeqBottom2(Line),
        NewCounter is Counter+1,
        print_symbols2(N, NewCounter, Resto).
print_symbols2(N, Counter, []).
	
%avança para a linha seguint

next_line([Line|Tail], Next, Rest):-
	write(Line),
	Next is Line.
	%Rest is Tail.

next_el([El|Tail], Next, Rest):-
	Next is El,
        Rest is Tail.

	
% imprime o tabuleiro	
print4L([Beg|Tail]):- 
		 %board4L(Board), 
		%lines(1,Board),nl,!.
	printSpace(10),write('__'),nl,
	printSpace(7), print_symbols(1,0,Beg), write('__'),nl, next_line(Tail, Next1, Rest1),
	printSpace(4), print_symbols(2,0,Next1), write('__'),nl, next_line(Rest1, Next2, Rest2),
	printSpace(1), print_symbols(3,0,Next2), write('__'),nl,next_line(Rest2, Next3, Rest3),
	next_el(Next3, El1, ElRest1), writeBeg(El1), print_symbols(3,0,ElRest1), nl, next_line(Rest3, Next4, Rest4),
	writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	next_el(Next4, El2, ElRest2), writeBeg(El2),  print_symbols(3,0,ElRest2), nl, next_line(Rest4, Next5, Rest5),
        writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	next_el(Next5, El3, ElRest3), writeBeg(El3), print_symbols(3,0,ElRest3), nl, next_line(Rest5, Next6, Rest6),
        writeSeqBottom, writeSeqBottom, writeSeqBottom, writeEnd, nl,
	next_el(Next6, El4, ElRest4), writeBeg(El4), print_symbols(3,0,ElRest4), nl, next_line(Rest6, Next7, Rest7),
        print_symbols2(3,0,Next7), writeEnd, nl, next_line(Rest7, Next8, Rest8),
	printSpace(3), print_symbols2(2,0,Next8), writeEnd, nl, next_line(Rest8, Next9, Rest9),
	printSpace(6),print_symbols2(1,0,Next9), writeEnd, nl,
	printSpace(9), writeEnd, nl.
	
printBoard4L(Board):- 
	board4L(Board),
	print4L(Board).	

printBoard5L(Board):- 
		board5L(Board), 
		lines(1,Board),nl,!.
		
printBoard10L(Board):- 
		board10L(Board), 
		lines(1,Board),nl,!.