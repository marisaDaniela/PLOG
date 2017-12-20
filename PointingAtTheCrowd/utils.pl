%print spaces
printSpace(T):-
	write(' '),
	NewT is T-1,
	NewT>0,
	printSpace(NewT).

printSpace(T).

writeSeqTop:-
        write('__'),
        write('/'), write('  '), write('\\').
writeSeqBottom:-
        write('\\'), write('__'), write('/'), write('  ').
writeBeg:-
         write('/'), write('  '), write('\\').
writeEnd:-
        write('\\'), write('__'), write('/').


% Para traduzir as setas no do tabuleiro

translate(0):- write('  ').
translate(1):- write('n ').
translate(2):- write('s ').
translate(3):- write('ne').
translate(4):- write('nw').
translate(5):- write('se').
translate(6):- write('sw').

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

/*leTodos(_,Chars):-%se quiser que falhe quando não é um algarismo tirar este pred
        get_code(NewCh),
        leTodos(NewCh,Chars).
*/

% Para criar valores aleatorios entre 1 e 8 (bot)
botRandom(R,C):-
	random(1,9,R),
	random(1,9,C).