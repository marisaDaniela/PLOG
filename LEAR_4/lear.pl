:- dynamic state/2.

:- ensure_loaded('board.pl').
:- ensure_loaded('menus.pl').
:- ensure_loaded('utils.pl').
:- ensure_loaded('gameplay.pl').
:- ensure_loaded('flips.pl').

:- use_module(library(lists)).
:- use_module(library(random)).
:- use_module(library(system)).

hum_hum:-
	board(Board),
    player1(B),
	player2(W),
	initCount(Cb, Cw),
	defineKomi(Komi),
	assert(state(Board)),
	printBoard(Board),
	repeat,
	retract(state(CurrBoard)),
	playPvP(CurrBoard, B, NewBoard, W, Cb, Cw, Komi),
	assert(state(NewBoard)).

playPvP(Board1,Player1,Board2,Player2, Cb, Cw, Komi):-
	Cenas is Cb + Cw , 
	(Cenas == 64 -> gameOver(Komi, Cb, Cw);
	 write('<Player '), write(Player1), write('>'),nl,
	 makeMove(Board1, Board2, Player1),
	 view(Board2),
	 counterInc(Player1, Cb, Cw, NewCw, NewCb),
	 write('White: '), write(NewCw),nl,
	 write('Black: '), write(NewCb),	nl,      
	 playPvP(Board2,Player2,NewBoard,Player1, NewCb, NewCw, Komi)).

playPvP(Board1,Player1,Board2,Player2, Cb, Cw,Komi):-
	nl, write('Invalid Move!! Try again'), nl,
	playPvP(Board1,Player1,Board2,Player2, Cb, Cw, Komi).


defineKomi(Komi):-
	write('Define the Komi (must be odd): '),
    le(Komi),
	write(Komi),
	(Komi mod 2) =\= 0. % verificar se o Komi e impar ou par

defineKomi(Komi):-
    	write('Invalid Komi!! Try again'), nl,
    	defineKomi(Komi).

gameOver(Komi, Cb, Cw):-
	write('GAME OVER'), nl,
    	write('Final Scores'), nl,
	write('Black: '),
	write(Cb), nl,
	write('White: '),
        write(Cw), nl,
	write('Scores after Komi: '),
	NewCb is Cb+Komi, %the last player is always the second becuase the size of the board is an even number
	write('Black: '),write(NewCb), nl, write('White: '), write(Cw), nl,
	write('The winner is: '),
	(NewCb > Cw -> write('BLACK!!!'), nl;
	 Cw > NewCb -> write('WHITE!!!'), nl).

/******************************************************************************
						COMP VS PLAYER
*******************************************************************************/	

hum_comp_easy:- 
	board(Board),
    player1(B),
	player2(W),
	initCount(Cb, Cw),
	defineKomi(Komi),
	assert(state(Board)),
	printBoard(Board),
	repeat,
	retract(state(CurrBoard)),
	playEasyPvC(CurrBoard, B, NewBoard, W, Cb, Cw, Komi),
	assert(state(NewBoard)).

playEasyPvC(Board1,Player1,Board2,Player2, Cb, Cw, Komi):-
	Cenas is Cb + Cw , 
	(Cenas == 64 -> gameOver(Komi, Cb, Cw);
	write('<Player '), write(Player1), write('>'),nl,
	makeMove(Board1, Board2, Player1),
	view(Board2),
	counterInc(Player1, Cb, Cw, NewCw, NewCb),
	write('White: '), write(NewCw),nl,
	write('Black: '), write(NewCb),	nl, 
	nl,write('<Computer is playing>'),nl,
	playEasyPvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif)).

playEasyPvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif):-
	Cenas2 is NewCb + NewCw , 
	(Cenas2 == 64 -> gameOver(Komi, Cb, Cw);
	botRandom(Line,Col),
	makeMoveRandomBot(Board2, NewBoard, Player2, Line, Col),
	view(NewBoard),
	 counterInc(Player2, NewCb, NewCw, NewCw2, NewCb2),
	 write('White: '), write(NewCw2),nl,
	write('Black: '), write(NewCb2),	nl, 
	playEasyPvC(NewBoard,Player1,NewBoard3,Player2, NewCb2, NewCw2,Komi)).


playEasyPvC(Board1,Player1,Board2,Player2, Cb, Cw, Komi):-
	nl, write('Invalid Move!! Try again'), nl,
	playEasyPvC(Board1,Player1,Board2,Player2, Cb, Cw, Komi).

playEasyPvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif):-
	playEasyPvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif).

/******************************************************************************
						COMP VS COMP
*******************************************************************************/	
comp_comp_easy:- 
	board(Board),
    player1(B),
	player2(W),
	initCount(Cb, Cw),
	defineKomi(Komi),
	assert(state(Board)),
	printBoard(Board),
	repeat,
	retract(state(CurrBoard)),
	playEasyCvC(CurrBoard, B, NewBoard, W, Cb, Cw, Komi),
	assert(state(NewBoard)).

playEasyCvC(Board,Player1,Board2,Player2, Cb, Cw, Komi):-
	Cenas is Cb + Cw , 
	(Cenas == 64 -> gameOver(Komi, Cb, Cw);
	write('<Computer '), write(Player1), write('>'),nl,
	sleep(0.1),
	botRandom(Line,Col),
	makeMoveRandomBot(Board, Board2, Player1, Line, Col),
	view(Board2),
	counterInc(Player1, Cb, Cw, NewCw, NewCb),
	write('White: '), write(NewCw),nl,
	write('Black: '), write(NewCb),	nl, 
	%nl,write('<Computer is playing>'),nl,
	playEasyCvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif)).

playEasyCvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif):-
	Cenas2 is NewCb + NewCw , 
	(Cenas2 == 64 -> gameOver(Komi, Cb, Cw);
	write('<Computer '), write(Player2), write('>'),nl,
	sleep(0.1),
	botRandom(Line,Col),
	makeMoveRandomBot(Board2, NewBoard, Player2, Line, Col),
	view(NewBoard),
	 counterInc(Player2, NewCb, NewCw, NewCw2, NewCb2),
	 write('White: '), write(NewCw2),nl,
	write('Black: '), write(NewCb2),	nl, 
	playEasyCvC(NewBoard,Player1,NewBoard3,Player2, NewCb2, NewCw2,Komi)).


playEasyCvC(Board1,Player1,Board2,Player2, Cb, Cw, Komi):-
	%nl, write('Invalid Move!! Try again'), nl,
	playEasyCvC(Board1,Player1,Board2,Player2, Cb, Cw, Komi).

playEasyCvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif):-
	playEasyCvC(Board2,Player1,NewBoard,Player2, NewCb, NewCw, Komi,Dif).

comp_comp_hard:- write('TODO').
hum_comp_hard:- write('TODO').