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
	write('+---------- Difficulty ----------+'),
	nl, write('|1.Easy                   2.Hard |'),
	nl, write('|0.Exit                   3.Back |'),
	nl, footer,
	repeat,	le(C), C >= 0, C =< 3,
	analizeDifficultyCompComp(C).
	
analizeDifficultyCompComp(1):-
	comp_comp_easy.
	
analizeDifficultyCompComp(2):-
	comp_comp_hard.
	
analizeDifficultyCompComp(0):-
	!.
	
analizeDifficultyCompComp(3):-
	!,play.



analize(3):-
	write('+---------- Difficulty ----------+'),
	nl, write('|1.Easy                   2.Hard |'),
	nl, write('|0.Exit                   3.Back |'),
	nl, footer,
	repeat,	le(C), C >= 0, C =< 3,
	analizeDifficultyHumComp(C).
	
analizeDifficultyHumComp(1):-
	hum_comp_easy.
	
analizeDifficultyHumComp(2):-
	hum_comp_hard.
	
analizeDifficultyHumComp(0):-
	!.
	
analizeDifficultyHumComp(3):-
	!,play.
	
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
	
% displays the game instructions
instructions:-
		write('+--------- Instructions ---------+'),
		nl, write('|Black plays first, then turns   |'),
		nl, write('|alternate. You must choose a    |'),
		nl, write('|place where want to leave your  |'),
		nl, write('|piece. First, you have to insert|'),
		nl, write('|a number between [1-8] to choose|'),
		nl, write('|the line, and then you choose   |'),
		nl, write('|the column, choosing again a    |'),
		nl, write('|number between [1-8]. The goal  |'),
		nl, write('|of this game is to fill the     |'),
		nl, write('|board with your mark and dont   |'),
		nl, write('|let your opponent do the same.  |'),
		nl, footer,
		write('|1.Back                   0.Exit|'),
		nl,repeat,	le(C), C >= 0, C =< 1,
		analize_five(C).

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
			