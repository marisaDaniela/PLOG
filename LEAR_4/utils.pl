% Para traduzir os caracteres do tabuleiro

translate(0):- write(' .').
translate(1):- write(' x').
translate(2):- write(' o').

% Nome de cada jogador

player1(1).
player2(2).

% celula vazia
isEmpty(0).

% Ler caracteres introduzidos pelo utilizador
le(Linha):-
	get_code(Ch),
	leTodos(Ch,[H|T]),
	name(Linha,[H|T]), !.

leTodos(13,[]).
leTodos(10,[]).

leTodos(Ch,[Ch|Chars]):-
	Ch >= 48,
	Ch =< 57,
	!,
	get_code(NewCh),
	leTodos(NewCh,Chars).

/*leTodos(_,Chars):-%se quiser que falhe quando n�o � um algarismo tirar este pred
        get_code(NewCh),
        leTodos(NewCh,Chars).
*/
	

% Para ler as coords (opcao 2)
getNum(N):-
	get_code(C),
	get_char(_),
    N is C - 48.

getNum(13,[]).
getNum(10,[]).

% Para criar valores aleatorios entre 1 e 8 (bot)
botRandom(R,C):-
	random(1,9,R),
	random(1,9,C).
	