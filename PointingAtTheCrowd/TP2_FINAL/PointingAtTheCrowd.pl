:- use_module(library(lists)).
:- use_module(library(clpfd)).
:- use_module(library(random)).
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
setas2([[2,1,3], [5,3,4], [4,4,1], [7,4,5], [1,6,6], [3,6,5], [4,7,6]]). %setas do 2 tabuleiro (do exemplo)
setas3([[2,1,3], [5,3,4], [4,5,1], [3,3,5], [4,6,6], [7,7,5], [8,8,6], [4,8,3],[3,5,3]]).
setas4([[3,1,2], [1,2,1], [1,4,1], [7,4,5], [1,6,6], [3,6,5], [4,7,6],[7,1,3], [8,3,4], [9,4,1], [10,4,5], [1,8,6], [9,6,5], [9,7,6]]). 
setas5([[2,1,3], [5,3,4], [4,4,1], [3,1,2], [1,2,1], [1,4,1],[4,7,6],[7,1,3], [3,3,4], [9,8,1], [10,9,5], [7,8,6], [9,8,5], [9,8,6]]). 
setas6([[2,1,3], [5,3,4], [4,4,1], [7,4,5], [2,1,3], [5,3,4], [4,7,6],[4,4,3], [5,5,4]]). 
setas7([[2,4,3], [6,3,4], [6,4,1], [8,1,2], [1,7,1], [1,8,1],[4,7,6],[7,1,3], [3,3,4], [7,8,1], [10,9,5], [7,8,6], [9,8,5], [9,8,6],[2,1,3], [5,3,4], [4,4,1], [3,1,2],[1,2,1], [1,4,1],[10,1,3]]). 

setas(1,Arrows):- setas1(Arrows).
setas(2,Arrows):- setas2(Arrows).
setas(3,Arrows):- setas3(Arrows).
setas(4,Arrows):- setas3(Arrows).
setas(5,Arrows):- setas5(Arrows).
setas(6,Arrows):- setas6(Arrows).
setas(7,Arrows):- setas7(Arrows).

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

verParteCima([], _).
verParteCima([H|Tail], Size1) :-
	length(H, Size),
	Size2 is Size1 - 1,
	espacamento(Size2),
	parteCima(Size, H),
	verParteCima(Tail, Size2).

parteBaixo(0,_):-
	write('\n').
parteBaixo(Size, [H|Tail]):-
	NewSize is Size - 1,
	write(H), write(' '),
	parteBaixo(NewSize, Tail).

verParteBaixo([],_).
verParteBaixo([H|Tail], Size1):-
	length(H, Size),
	Size2 is Size1 + 1,
	espacamento(Size2),
	parteBaixo(Size,H),
	verParteBaixo(Tail, Size2).
	
divideTab(H, 0, Aux1, H, Aux1).
divideTab([H|Tail], N, List1, List2, Aux1):-
	NewN is N-1,
	divideTab(Tail, NewN, List1, List2, [H|Aux1]).

parteCima(0, Board, Size, SizeTotal) :-
	N is round(Size/2), 
	NewSize is N * 2 - 2,
	NewN is N - 1,
	parteBaixo(NewN, Board, NewSize,SizeTotal).
	
parteCima(N, [Line|Tail], Size, SizeTotal) :-
	NewN is N - 1,
	NewSize is Size + 1,
	length(Line, Size),
	domain(Line, 0, SizeTotal),
	parteCima(NewN, Tail, NewSize,SizeTotal).
	
parteBaixo(0, _, _,_).
parteBaixo(N, [Line|Tail], Size, SizeTotal) :-
	NewN is N - 1,
	NewSize is Size - 1,
	length(Line, Size),
	domain(Line, 0, SizeTotal),
	parteBaixo(NewN, Tail, NewSize,SizeTotal).

%cria um tabuleiro hexagonal de lado N 
criaTab(N, Board) :-
	Size is N * 2 - 1, %tamanho da linha maior (a do meio)
	length(Board, Size),
	parteCima(N, Board, N, Size).
	
%a parte de baixo vai ser simetrica da parte de cima 
mostraTab(Board):-
	length(Board, Size),
	N is round((Size + 1)/2),
	divideTab(Board, N, List1, List2, Aux1),
	reverse(List1, NewList1),
	verParteCima(NewList1, N),
	verParteBaixo(List2,0).

% restricao
% A soma dos pontos na direcao da seta tem de ser maior do que a soma dos pontos nas outras direcoes para quais a seta podia virar

% caso a celula seja 0 ou 7 (pontos) coloca numa lista
insere([], Points, Points).
insere([H|Tail], List, Points) :-
	(var(H), H #= 0 #\/ H #= 7, insere(Tail, [H|List], Points)) ; 
	insere(Tail, [H|List], Points).
	
%para obter a lista com os pontos
getPoints([], Points, Points).
getPoints([H|Tail], List, Points) :- 
	insere(H, List, NewVars), 
	getPoints(Tail, NewVars, Points).
	
	
%obter a celula da linha Lin e coluna Col
getPos(Lin, Col, Board, Cell) :-
	nth1(Col, Board, Line),
	nth1(Lin, Line, Cell).
getPos(_, _, _, -1).

%inserir as setas no tabuleiro formado
colocaSetas([], _).
colocaSetas([[Lin,Col, Dir]|Tail], Board) :-
	getPos(Lin, Col, Board, Cell),
	Cell is Dir,
	colocaSetas(Tail, Board).

	
%Aplicar a restricao: 
%1º compara a direcao da seta 
%2º verifica os pontos na direcao da seta, se tiver , adiciona-os a uma lista
%3º se nao, inverte a lista e verifica na direcao contraria, caso nao tenha tambem, vai ver nas diagonais (colunas)
% restricao: a soma dos pontos na direcao da seta tem de ser maior do que nas outras direcoes possiveis

comparaDir(Lin, Col, N, Board, Dir, Dir).
comparaDir(Lin, Col, N, Board, Dir, Dir2) :-
	case(Dir,Lin, Col, N, Board, [], List),
	case(Dir2,Lin, Col, N, Board, [], List2),
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
	
%funcao principal
pointing(N, Arrows, Board) :-
	criaTab(N, Board),
	colocaSetas(Arrows, Board),
	checkSetas(Arrows, N, Board),
	getPoints(Board, [], Points),
	labeling([], Points).

%Interface	----------
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
	nl, write('+ 3) Random         3) Sair      +'),
	nl, write('+                                +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize(C).

analize(1):-
	statistics(walltime, [Start,_]),
	setas1(Arrows),
	pointing(4, Arrows, Board),
	mostraTab(Board),nl,
	write('+--------------------------------+'),nl,
	write('+          Estatisticas          +'),nl,
	write('+--------------------------------+'),nl,
	statistics(walltime, [End,_]) ,
	Time is End - Start ,
	write('Tempo: '),
	write(Time),nl,
	fd_statistics, 
	nl, write('+--------------------------------+'),
	nl, write('+ 1) Voltar         0) Sair      +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize2(C).
	
	
analize(2):-
	statistics(walltime, [Start,_]),
	setas2(Arrows),
	pointing(4, Arrows, Board),
	mostraTab(Board),
	write('+--------------------------------+'),nl,
	write('+          Estatisticas          +'),nl,
	write('+--------------------------------+'),nl,
	statistics(walltime, [End,_]) ,
	Time is End - Start ,
	write('Tempo: '),
	write(Time),nl,
	fd_statistics, 
	nl, write('+--------------------------------+'),
	nl, write('+ 1) Voltar         0) Sair      +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C),
	analize2(C).
	
analize(0):- !.
analize2(0):- !.

analize2(1):- !, main.

analize(3):-
	statistics(walltime, [Start,_]),
	write('Lado do hexagono(maior do que 4):'), nl,
	repeat,	le(C),C >= 4,
	random(1,8, S), %escolhe aleatoriamente o grupo das setas TODO: tem um bug para os casos de ter um tabuleiro em que o numero maximo de colunas e 7 e coloca-se uma 8, se se voltar a escolher entretanto formara o tabuleiro, mas como e random a escolha, as vezes pode demorar
	%todo: corrigir isto
	setas(S, Arrows),
	pointing(C, Arrows, Board),
	mostraTab(Board),
	write('+--------------------------------+'),nl,
	write('+          Estatisticas          +'),nl,
	write('+--------------------------------+'),nl,
	statistics(walltime, [End,_]) ,
	Time is End - Start ,
	write('Tempo: '),
	write(Time),nl,
	fd_statistics, 
	nl, write('+--------------------------------+'),
	nl, write('+ 1) Voltar         0) Sair      +'),
	nl, write('+--------------------------------+'),nl,
	repeat,	le(C2),
	analize2(C2).
	
	
	
	