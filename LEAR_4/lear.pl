:- dynamic state/2.

:- ensure_loaded('board.pl').
:- ensure_loaded('menus.pl').
:- ensure_loaded('utils.pl').
:- ensure_loaded('gameplay.pl').

:- use_module(library(lists)).
:- use_module(library(random)).


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
		
hum_hum:-
	board(Board),
    player1(B),
	assert(state(Board,B)),
	printBoard(Board),
	repeat,
	retract(state(CurrBoard, B1)),
	player2(W),
	playPvP(CurrBoard, B1, NewBoard, W),
	assert(state(T2,P2)).

playPvP(Board1,Player1,Board2,Player2):-
	write('<Player '), write(Player1), write('>'),nl,
	makeMove(Board1, Board2, Player1),
	view(Board2).

comp_comp:- write('TODO').

hum_comp:- write('TODO').