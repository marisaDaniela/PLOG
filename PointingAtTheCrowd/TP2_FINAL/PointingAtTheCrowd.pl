:- use_module(library(lists)).
:- use_module(library(clpfd)).
:- ensure_loaded('Cases.pl').

% posicao e direcao das setas

% direita - 1
% baixoDir - 2
% baixoEsq - 3
% esq - 4
% cimaEsq - 5
% cimaDir - 6

% pontos - 7

% setas ([X1,Y1,Dir],...).  
setas1([[3,1,2], [1,2,1], [1,4,1], [4,4,4], [7,4,3], [5,5,5], [3,6,6], [3,7,5], [4,7,6]]). %setas do primeiro tabuleiro
setas2([[2,1,3], [5,3,4], [4,4,1], [7,4,5], [1,6,6], [3,6,5], [4,7,6]]).

% Visualizacao do tabuleiro

espacamento(0).
espacamento(Size1):-
	write(' '),
	NewSize is Size1 -1,
	espacamento(NewSize).
	
parteCima(0, _) :- 
	write('\n').	
parteCima(Size, [H|Tail]):-
	NewSize is Size-1,
	write(H),write(' '),
	parteCima(NewSize, Tail).

verParteCima([], _, _).
verParteCima([H|Tail], Size1, Size2) :-
	length(H, Size),
	Size2 is Size1-1,
	espacamento(Size2),
	parteCima(Size, H),
	verParteCima(Tail, Size2, _).

parteBaixo(0,_):-
	write('\n').

parteBaixo(Size, [H|Tail]):-
	NewSize is Size -1,
	write(H), write(' '),
	parteBaixo(NewSize, Tail).

espacamento2(0).
espacamento2(Num):-
	write(" "),
	NewNum is Num - 1,
	espacamento2(NewNum).

verParteBaixo([],_,_).
verParteBaixo([H|Tail], Size1, Size2):-
	length(H, Size),
	Size2 is Size1+1,
	espacamento(Size2),
	parteBaixo(Size,H),
	verParteBaixo(Tail, Size2, _).
	
divide(H, 0, Aux1, H, Aux1).
divide([H|Tail], N, List1, List2, Aux1):-
	NewN is N-1,
	divide(Tail, NewN, List1,List2, [H|Aux1]).
	
mostraTab(Board):-
	length(Board, Size),
	N is round((Size + 1)/2),
	divide(Board, N, List1, List2, Aux1),
	reverse(List1, NewList1),
	verParteCima(NewList1, N, _),
	verParteBaixo(List2,0, _).

% restricoes:
		% Restricao 1:
			% A soma dos pontos na direcao da seta tem de ser maior do que a soma dos pontos nas outras direcoes para quais a seta podia virar
insere([], Points, Points).
insere([Cell|Tail], List, Points) :-
	(var(Cell), Cell #= 0 #\/ Cell #= 7, insere(Tail, [Cell|List], Points)) ; insere(Tail, [Cell|List], Points).
	
getPoints([], Points, Points).
getPoints([Cell|Tail], List, Points) :- insere(Cell, List, NewVars), getPoints(Tail, NewVars, Points).
	
parteCima(0, Board, Size) :-
	N is round(Size/2),
	NewSize is N*2-2,
	NewN is N-1,
	parteBaixo(NewN, Board, NewSize).
	
parteCima(N, [Board|Tail], Size) :-
	NewN is N-1,
	NewSize is Size+1,
	length(Line, Size),
	domain(Line, 0, 7),
	Board = Line,
	parteCima(NewN, Tail, NewSize).
	
parteBaixo(0, _, _).
parteBaixo(N, [Board|Tail], Size) :-
	NewN is N-1,
	NewSize is Size-1,
	length(Line, Size),
	domain(Line, 0, 7),
	Board = Line,
	parteBaixo(NewN, Tail, NewSize).

criaTab(N, FinalTab) :-
	Size is N*2-1,
	length(Board, Size),
	parteCima(N, Board, N),
	FinalTab = Board.
	
getCell(Lin, Col, Board, Cell) :-
	nth1(Col, Board, Line),
	nth1(Lin, Line, Cell).
getCell(_, _, _, -1).

colocaSetas([], _).
colocaSetas([[Lin,Col, Dir]|Tail], Board) :-
	getCell(Lin, Col, Board, Cell),
	Cell is Dir,
	colocaSetas(Tail, Board).

	
comparaDir(Lin, Col, N, Board, Dir, Dir).
	
comparaDir(Lin, Col, N, Board, Dir, Dir2) :-
	case(Dir,Lin, Col, N, Board,  [], List),
	case(Dir2,Lin, Col, N, Board,  [], List2),
	sum(List, #=, Sum),
	sum(List2, #<, Sum).
	
checkSetas([], _, _).
checkSetas([[Lin,Col, Dir]|Tail], N, Board) :-
	comparaDir(Lin, Col, N, Board, Dir, 1),
	comparaDir(Lin, Col, N, Board, Dir, 2),
	comparaDir(Lin, Col, N, Board, Dir, 3),
	comparaDir(Lin, Col, N, Board, Dir, 4),
	comparaDir(Lin, Col, N, Board, Dir, 5),
	comparaDir(Lin, Col, N, Board, Dir, 6),
	checkSetas(Tail, N, Board).
	
pointing(N, Arrows, Board) :-
	criaTab(N, Board),
	colocaSetas(Arrows, Board),
	checkSetas(Arrows, N, Board),
	getPoints(Board, [], Points),
	labeling([], Points).
	
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

main:-
	nl, write('+--------------------------------+'),
	nl, write('|      POINTING AT THE CROWD     |'),
	nl, write('+--------------------------------+'),
	nl, write('+         Choose wisely:         +'),
	nl, write('+                                +'),
	nl, write('+ 1) Exemplo 1      2) Exemplo 2 +'),
	nl, write('+ 0) Sair                        +'),
	nl, write('+                                +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize(C).

analize(1):-
	arrows1(Arrows),
	pointing(4, Arrows, Board),
	mostraTab(Board),
	fd_statistics, 
	nl, write('+--------------------------------+'),
	nl, write('+ 1) Voltar         0) Sair      +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize2(C).
	
	
analize(2):-
	arrows2(Arrows),
	pointing(4, Arrows, Board),
	mostraTab(Board),fd_statistics,
	nl, write('+--------------------------------+'),
	nl, write('+ 1) Voltar         0) Sair      +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize2(C).
	
analize(0):- !.
analize2(0):- !.

analize2(1):- !, main.
	
	
	