% Para traduzir os caracteres do tabuleiro

translate(0):- write(' .').
translate(9):- write(' ').
translate(1):- write(' x').
translate(2):- write(' o').

% Ler caracteres introduzidos pelo utilizador

le(Linha):-
	get_code(Ch),
	leTodos(Ch,Chars),
	name(Linha,Chars).

leTodos(13,[]).
leTodos(10,[]).

leTodos(Ch,[Ch|Chars]):-
	get_code(NewCh),
	leTodos(NewCh,Chars).

	

% Para as coordenadas
getNum(N):- get_code(C),
			get_char(_),
			N is C - 49.

getNum(13,[]).
getNum(10,[]).

			

getLetter(N):- get_code(C),
			get_char(_),
			N is C - 97.	

getLetter(13,[]).
getLetter(10,[]).