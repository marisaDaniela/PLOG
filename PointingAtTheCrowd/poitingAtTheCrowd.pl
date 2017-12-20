% dir - 1
% baixoDir - 2
% baixoEsq - 3
% esq - 4
% cimaEsq - 5
% cimaDir - 6

board1([ 
   [0,0,2,0],
  [1,0,0,0,0],
 [0,0,0,0,0,0],
[1,0,0,4,0,0,3],
 [0,0,0,0,5,0],
  [0,0,6,0,0],
   [0,0,5,6]
 ]).


board2([ 
   [0,2,0,0,0],
  [0,0,0,0,0,0],
 [0,0,0,0,4,0,0],
[0,0,0,1,0,0,0,5],
 [0,0,0,0,0,0,0],
  [6,0,5,0,0,0],
   [0,0,0,0,6]
]).

line1(0, '   ').
line2(0, '   ').
line3(0, '   ').

line1(1, ' x ').
line2(1, '  x').
line3(1, ' x ').

line1(2, '   ').
line2(2, '  x').
line3(2, ' xx').

line1(3, '   ').
line2(3, 'x  ').
line3(3, 'xx ').

line1(4, ' x ').
line2(4, 'x  ').
line3(4, ' x ').

line1(5, 'xx ').
line2(5, 'x  ').
line3(5, '   ').

line1(6, ' xx').
line2(6, '  x').
line3(6, '   ').

separator('-------').

spaces(4):- write('   ').
spaces(5):- write('  ').
spaces(6):- write(' ').
spaces(7):- write('').

printSeparator([]).
printSeparator([H|T]):- separator(Character), write(Character), printSeparator(T).

printLine1([]).
printLine1([H|T]):- line1(H, Character), write(Character), write(' | '), printLine1(T).

printLine2([]).
printLine2([H|T]):- line2(H, Character), write(Character), write(' | '), printLine2(T).

printLine3([]).
printLine3([H|T]):- line3(H, Character), write(Character), write(' | '), printLine3(T).

printLine(Lista):- 
	length(Lista, Length), 
	spaces(Length), 
	printLine1(Lista), nl, 
	spaces(Length),
	printLine2(Lista),nl,
	spaces(Length), 
	printLine3(Lista), nl,
	spaces(Length), 
	printSeparator(Lista).

printMatrix([]).
printMatrix([H|T]) :- printLine(H), nl, printMatrix(T).

testPrint :- board1(Board),write('        -----+-----+-----+'), nl, printMatrix(Board).

%% TODO: Checkar quantos pontos tem em cada linha / coluna / diagonal
%% RESTRICOES: as setas na margem nao pode apontar para fora do tabuleiro 
%% 			   a direcao para onde a seta aponta tem de ter mais pontos do que para as outras direcoes 


