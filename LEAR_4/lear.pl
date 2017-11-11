:- dynamic state/2.

:- ensure_loaded('board.pl').
:- ensure_loaded('menus.pl').
:- ensure_loaded('utils.pl').
:- ensure_loaded('gameplay.pl').
:- ensure_loaded('flips.pl').

:- use_module(library(lists)).
:- use_module(library(random)).
		
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
	playPvP(CurrBoard, B, NewBoard, W, Cb, Cw, Last, Komi),
	assert(state(NewBoard)).

playPvP(Board1,Player1,Board2,Player2, Cb, Cw, Last,Komi):-
	Cenas is Cb + Cw , 
	(Cenas == 64 -> gameOver(Komi, Cb, Cw, Last);
	write('<Player '), write(Player1), write('>'),nl,
	%Last is Player1,
	makeMove(Board1, Board2, Player1),
	view(Board2),
	counterInc(Player1, Cb, Cw, NewCw, NewCb),
	write('NewCw: '), write(NewCw),nl,
	write('NewCb: '), write(NewCb),	nl,      
	playPvP(Board2,Player2,NewBoard,Player1, NewCb, NewCw, Last,Komi)).

playPvP(Board1,Player1,Board2,Player2, Cb, Cw, Last,Komi):-
	nl, write('Invalid Move!! Try again'), nl,
	playPvP(Board1,Player1,Board2,Player2, Cb, Cw, Last,Komi).
	
	
defineKomi(Komi):-
	write('Define the Komi (must be odd): '),
    le(Komi),
	write(Komi),
	(Komi mod 2) =\= 0. % verificar se o Komi e impar ou par

defineKomi(Komi):-
    write('Invalid Komi!! Try again'), nl,
    defineKomi(Komi).

gameOver(Komi, Cb, Cw, Last):-
	write('GAME OVER'), nl,
    write('Final Scores'), nl,
	write('Black: '),
	write(Cb), nl,
	write('White: '),
    write(Cw), nl,
	write('Scores after Komi: '),
	(Last==1 -> NewCw is Cw+Komi, NewCb is Cb, write('Black: '),write(NewCb), nl, write('White: '), write(NewCw), nl;
	 Last==2 -> NewCb is Cb+Komi, NewCw is Cw, write('Black: '),write(NewCb), nl, write('White: '), write(NewCw), nl),
	write('The winner is: '),
	(NewCb > NewCw -> write('BLACK!!!'), nl;
	 NewCw > NewCb -> write('WHITE!!!'), nl).
	

comp_comp_easy:- write('TODO').

comp_comp_hard:- write('TODO').

hum_comp_easy:- write('TODO').
hum_comp_hard:- write('TODO').