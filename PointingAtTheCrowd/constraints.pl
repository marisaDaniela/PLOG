:- use_module(library(clpfd)).

% dir - 1
% baixoDir - 2
% baixoEsq - 3
% esq - 4
% cimaEsq - 5
% cimaDir - 6
% Ponto - 9

%Exemplo do tabuleiro1 (no site)
board1([ 
   [0,9,2,0],
  [1,0,9,0,9],
 [0,9,0,0,9,0],
[1,9,0,4,0,0,3],
 [0,0,0,0,5,9],
  [0,0,6,0,9],
   [0,0,5,6]
 ]).
% Ainda tenho de fazer estas funcoes
% how? 
% idk
% restrição 2: verificar se a seta esta na margem, e nao deixar apontar para as outras direçoes


getNumPointsDir(NumPointsDir, Line, Col,[H|Tail]):-
	board1([H|Tail]),
	element(Line, H, Pos1), %isto da-me o elemento que esta na posicao dada em Line da linha H
	write(H), nl, write(Pos1).
	
getNumPointsBaixoDir(NumPointsBaixoDir, Board).
getNumPointsBaixoEsq(NumPointsBaixoEsq, Board).
getNumPointsEsq(NumPointsEsq, Board).
getNumPointsCimaEsq(NumPointsCimaEsq, Board).
getNumPointsCimaDir(NumPointsCimaDir, Board).

%Caso da seta apontar para a direita
case(1,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir,Line,Col, Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq, Line,Col,Board),
	getNumPointsEsq(NumPointsEsq, Line,Col,Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir,Line,Col, Board),
	(NumPointsDir #\=0 #/\ NumPointsDir #> NumPointsBaixoDir #/\ NumPointsDir #> NumPointsBaixoEsq #/\
	NumPointsDir #> NumPointsEsq #/\ NumPointsDir #> NumPointsCimaEsq #/\
	NumPointsDir #> NumPointsCimaDir).
	
%Caso da seta apontar para a diagonal direita inferior
case(2,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir,Line,Col, Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq,Line,Col, Board),
	getNumPointsEsq(NumPointsEsq, Line,Col,Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir,Line,Col, Board),
	(NumPointsBaixoDir #\=0 #/\ NumPointsBaixoDir #> NumPointsDir #/\ NumPointsBaixoDir #> NumPointsBaixoEsq #/\
	NumPointsBaixoDir #> NumPointsEsq #/\ NumPointsBaixoDir #> NumPointsCimaEsq #/\
	NumPointsBaixoDir #> NumPointsCimaDir).
	
%Caso da seta apontar para a diagonal esquerda inferior
case(3,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir,Line,Col, Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq,Line,Col, Board),
	getNumPointsEsq(NumPointsEsq,Line,Col, Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir,Line,Col, Board),
	(NumPointsBaixoEsq #\=0 #/\ NumPointsBaixoEsq #> NumPointsBaixoDir #/\ NumPointsBaixoEsq #> NumPointsDir #/\
	NumPointsBaixoEsq #> NumPointsEsq #/\ NumPointsBaixoEsq #> NumPointsCimaEsq #/\
	NumPointsBaixoEsq #> NumPointsCimaDir).
	
	
%Caso da seta apontar para a esquerda
case(4,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir,Line,Col, Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq,Line,Col, Board),
	getNumPointsEsq(NumPointsEsq,Line,Col,Line,Col, Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir,Line,Col, Board),
	(NumPointsEsq #\=0 #/\ NumPointsEsq #> NumPointsBaixoDir #/\ NumPointsEsq #> NumPointsDir #/\
	NumPointsEsq #> NumPointsDir #/\ NumPointsEsq #> NumPointsCimaEsq #/\
	NumPointsEsq #> NumPointsCimaDir).
	
%Caso da seta apontar para a diagonal superior esquerda
case(5,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir,Line,Col, Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq,Line,Col, Board),
	getNumPointsEsq(NumPointsEsq,Line,Col, Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir,Line,Col, Board),
	(NumPointsCimaEsq #\=0 #/\ NumPointsCimaEsq #> NumPointsBaixoDir #/\ NumPointsCimaEsq #> NumPointsBaixoEsq #/\
	NumPointsCimaEsq #> NumPointsEsq #/\ NumPointsCimaEsq #> NumPointsDir #/\
	NumPointsCimaEsq #> NumPointsCimaDir).
	
%Caso da seta apontar para a diagonal superior direita
case(6,Line,Col,Board):-
	getNumPointsDir(NumPointsDir,Line,Col, Board),
	getNumPointsBaixoDir(NumPointsBaixoDir, Line,Col,Board),
	getNumPointsBaixoEsq(NumPointsBaixoEsq,Line,Col, Board),
	getNumPointsEsq(NumPointsEsq, Line,Col,Board),
	getNumPointsCimaEsq(NumPointsCimaEsq,Line,Col, Board),
	getNumPointsCimaDir(NumPointsCimaDir, Line,Col,Board),
	(NumPointsCimaDir #\=0 #/\ NumPointsCimaDir #> NumPointsBaixoDir #/\ NumPointsCimaDir #> NumPointsBaixoEsq #/\
	NumPointsCimaDir #> NumPointsEsq #/\ NumPointsCimaDir #> NumPointsDir #/\
	NumPointsCimaDir #> NumPointsCimaEsq).
	
% Restricao 2

%ver o indice da seta
% se for: (x,y)
	% y = 0, significa que esta na primeira linha entao 
		% nao pode virar para cima, diagonalcimaEsq, diagonalCimaDir
	% y = NLinhas, significa que esta na ultima linha, entao
		% nao pode virar para baixo, diagonalBaixoDir, diagonalcimaEsq
		
% Caso dos 6 cantos 
% ...