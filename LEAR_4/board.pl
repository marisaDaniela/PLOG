/************************************************
				BOARDS					
************************************************/

board([
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0]]).

board_Int([
[0,0,0,0,0,0,0,0],
[0,0,0,0,0,0,0,0],
[0,1,1,0,1,1,0,0],
[2,0,0,2,0,0,2,0],
[0,1,0,0,0,1,0,0],
[0,0,2,0,2,0,0,0],
[0,0,0,1,0,0,0,0],
[0,0,0,0,0,0,0,0]]).

board_End([
[1,1,2,2,2,2,2,2],
[2,2,2,2,2,2,2,2],
[2,1,2,1,2,2,1,2],
[2,1,2,1,1,2,2,2],
[2,1,2,1,1,2,2,2],
[2,1,2,1,1,2,2,2],
[2,1,2,1,1,2,2,2],
[2,1,2,1,1,2,2,2]]).


/************************************************
			DISPLAY BOARD					
************************************************/

% imprime as coordenadas das colunas e respetivas barras
view(Board):-
	nl,nl, write('    1 2 3 4 5 6 7 8'), nl,
	lines(1,Board),nl,!.

% imprime recursivamente as linhas do tabuleiro
lines(_,[]).
lines(N,[L|Ls]):-
	write(N), write('. ') ,show_line(L), nl,
	N1 is N+1,
	lines(N1, Ls).

% imprime recursivamente os caracteres de cada linha do tabuleiro
show_line([]).
show_line([El|Es]):-
	translate(El),
	show_line(Es).
	

% imprime o tabuleiro	
printBoard(Board):- 
	board(Board), 
	view(Board).
				
% imprime o tabuleiro	
printBoardInit(Board):- 
	board_Int(Board), 
	view(Board).
	
% imprime o tabuleiro	
printBoardEnd(Board):- 
	board_End(Board), 
	view(Board).
				
				