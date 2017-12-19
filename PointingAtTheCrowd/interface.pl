%interface
:- ensure_loaded('board.pl').
:- ensure_loaded('utils.pl').

main:-
	nl, write('+--------------------------------+'),
	nl, write('|      POINTING AT THE CROWD     |'),
	nl, write('+--------------------------------+'),
	nl, write('+         Choose wisely:         +'),
	nl, write('+                                +'),
	nl, write('+  1) L = 4            2) L = 5  +'),
	nl, write('+  3) L = 10           0) Quit   +'),
	nl, write('+                                +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize(C).

analize(1):-
	printBoard4L(Board).
	
analize(2):-
	printBoard5L(Board).
	
analize(3):-
	printBoard10L(Board).
	
analize(0):- !.