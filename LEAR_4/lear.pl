:- dynamic state/2.
:- dynamic state/1.

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
	player2(W),
	initCount(Cb, Cw),
	%write(Cb),
	write('Define the Komi (must be odd): '),
	getNum(Komi),%restrições para o komi só poder se ímpar
	%write(Cw),
	assert(state(Board)),
	printBoard(Board),
	repeat,
	retract(state(CurrBoard)),
	playPvP(CurrBoard, B, NewBoard, W, Cb, Cw),
	assert(state(NewBoard))%,
	gameOver(Cb, Cw).

playPvP(Board1,Player1,Board2,Player2, Cb, Cw):-
	write('<Player '), write(Player1), write('>'),nl,
       % write(Cb),
        %write(Cw),
	%nl,
	%initCount(NewCb, NewCw),
	makeMove(Board1, Board2, Player1),
	view(Board2),
	counterInc(Player1, Cb, Cw, NewCw, NewCb),
%	write(NewCw),
	write(NewCb),
	%(Player1==1 -> NewCb is Cb+1,  write(NewCb), NewCw is 0;
        %Player1==2 -> NewCw is Cw+1, write(NewCw), NewCb is 0),	      
	playPvPR(Board2,Player2,NewBoard,Player1, NewCb, 0).

playPvP(Board1,Player1,Board2,Player2):-
	nl, write('Invalid Move!! Try again'), nl,
	playPvP(Board1,Player1,Board2,Player2).

playPvPR(Board1,Player1,NewBoard,Player2, Cb, Cw):-
	write('<Player '), write(Player1), write('>'),nl,
	write(Cb),
        makeMove(Board1, Board2, Player1),
        view(Board2),
        counterInc(Player1, Cb, Cw, NewCw, NewCb), 
	%write(NewCw), 
	write(NewCb),            
        playPvPR(Board2,Player2,NewBoard,Player1, NewCb, NewCw).

playPvPR(Board1,Player1,Board2,Player2, Cb, Cw):-
        nl, write('Invalid Move!! Try again'), nl,
        playPvP(Board1,Player1,Board2,Player2).	

gameOver(Cb, Cw):-
        write('Final Scores'), nl,
	write('Black: '),
	write(Cb), nl,
	write('White: '),
        write(Cw), nl.
	

comp_comp:- write('TODO').

hum_comp:- write('TODO').