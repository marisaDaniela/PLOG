/************************************************
				MENUS					
************************************************/

play :-
	header,
	mainMenu.

header:-
	nl, write('+--------------------------------+'),
	nl, write('|              LEAR              |'),
	nl, write('+--------------------------------+'),nl.
	
footer:-
	write('+--------------------------------+'),nl.

mainMenu:-
	write('+------------ Choose ------------+'),
	nl, write('|1.Hum/Hum        2.Comp/Comp    |'),
	nl, write('|3.Hum/Comp       4.Game states  |'),
	nl, write('|5.Instructions   0.Exit         |'),
	nl, footer,
	repeat,	le(C),
	analize(C).
	
analize(1):-
	hum_hum.
	
analize(2):-
	comp_comp.
	
analize(3):-	
	hum_comp.
	
analize(4):-   
		write('+---------- Game states ---------+'),
		nl, write('|1.Begin          2.Intermediate |'),
		nl, write('|3.End            4.Back         |'),
		nl, write('|0.Exit                          |'),
		nl, footer,
		repeat,	le(C), C >= 0, C =< 4,
		analize_second(C).
		
analize(5):-
	instructions.

analize(0):- 
		!.
		
analize_second(0):-
		!.

analize_second(1):-
		printBoard(Board),
		nl, footer,
	    write('|1.Back                   0.Exit|'),
		nl,repeat,	le(C), C >= 0, C =< 1,
		analize_four(C).
					
analize_second(2):-
		printBoardInit(T),
		nl, footer,
		write('|1.Back                   0.Exit|'),
		nl,repeat,	le(C), C >= 0, C =< 1,
		analize_four(C).

analize_second(3):-
	printBoardEnd(T),
	nl, footer,
	write('|1.Back                   0.Exit|'),
	nl,repeat,	le(C), C >= 0, C =< 1,
	analize_four(C).

analize_second(4):-
	!,play.
	
analize_four(0):- 
		!.
analize_four(1):- 
		!, analize(4).	
		
analize_five(0):- !.
analize_five(1):- !, 
		play.
			