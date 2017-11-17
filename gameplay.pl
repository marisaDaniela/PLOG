getElpos(1, [Elemento|_], Elemento).
getElpos(Pos, [_|Resto], Elemento):-
        Pos > 1,
        Next is Pos-1,
        getElpos(Next, Resto, Elemento).

getPiece(Board, NLine, NCol, Piece):-
        getElpos(NLine, Board, Line),
        getElpos(NCol, Line, Piece). 


setInCol(1, [_|Resto], Piece, [Piece|Resto]).
setInCol(Pos, [X|Resto], Piece, [X|NewResto]):-
        Pos>1,
        Next is Pos-1,
        setInCol(Next, Resto, Piece, NewResto).

setInLine(1, [Line|Resto], NCol, Piece, [NewLine|Resto]):-
        setInCol(NCol, Line, Piece, NewLine).
setInLine(Pos, [Line|Resto], NCol, Piece, [Line|NewResto]):-
        Pos>1,
        Next is Pos-1,
        setInLine(Next, Resto, NCol, Piece, NewResto).

insertPiece(OldBoard, NLine, NCol, Piece, NewBoard):-
        setInLine(NLine, OldBoard, NCol, Piece, NewBoard).

movePlace(Line, Col):-
        write('Choose a place to set a piece.'), nl,
        write('Line: '), le(Line), 
        write('Col: '), le(Col), nl. 
%fazer restricoes de lugar

makeMoveRandomBot(CurrBoard, NewBoard, Player, Line, Col, Cb, Cw, NewCw, NewCb):-
		getPiece(CurrBoard, Line, Col, Piece), 
        Line>=1, Line=<8,%verifica se o local escolhido esta dentro do tabuleiro
        Col>=1, Col=<8,
		Piece==0,%verifica se ja existe uma peça no local escolhido
        insertPiece(CurrBoard, Line, Col, Player, NewBoard),
		flip(NewBoard, Line, Col, Player, NewBoard2, Cb, Cw, NewCw, NewCb).
		
makeMove(CurrBoard, NewBoard2, Player, Cb, Cw, NewCw, NewCb):-
		write('MakeMove'),
        once(movePlace(Line, Col)),
        Line>=1, Line=<8,%verifica se o local escolhido esta dentro do tabuleiro
        Col>=1, Col=<8,
        getPiece(CurrBoard, Line, Col, Piece), %verifica se ja existe uma peça no local escolhido
        Piece==0,
        insertPiece(CurrBoard, Line, Col, Player, NewBoard),
	flip(NewBoard, Line, Col, Player, NewBoard2, Cb, Cw, NewCw, NewCb).

/*flip(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
	\+checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb).*/
flip(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        write('Entered flip.'),
	checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb).

initCount(Cb, Cw):-
        Cb=0,
        Cw=0.

counterInc(Player, Cb, Cw, NewCw, NewCb):-
       write('Counter Inc.'), nl,
       Player==1 -> NewCb is Cb+1, NewCw is Cw;%,  write(NewCb);
       Player==2 -> NewCw is Cw+1, NewCb is Cb.%, write(NewCw).

counterDec(Player, Cb, Cw, NewCw, NewCb):-
       write('Counter Dec.'), nl,
       Player==1 -> NewCw is Cw-1, NewCb is Cb;%,  write(NewCb);
       Player==2 -> NewCb is Cb-1, NewCw is Cw.%, write(NewCw).

finalScore(Board, Line, Col, Cb, Cw):-
     Line =<8, Col =<8,
     getPiece(Board, Line, Col, Piece),
     counterInc(Piece, Cb, Cw, NewCw, NewCb),
     (Col<8 -> NewCol is Col+1, NewLine is Line;
     (Line \= 8, Col==8)-> NewCol is 0, NewLine is Line+1),
     finalScore(Board, NewLine, NewCol, NewCb, NewCw).
	
%Predicado para saber se uma casa esta vazia

isEmptyCell(Line, Col, Board):-
	getPiece(Board, Line, Col, Piece),
	isEmpty(Piece).
	
findEmptyCell([],_,_,[]).
findEmptyCell(Board, Line, Col, CoordinatesList):-
	Line =< 8,
	findall(Board, insertPiece(Board, Line, Col, 0, NewBoard), ListOfMoves),
	%once(CoordinatesList = [[Line, Col]]),
	%NewCoordinatesList = append(CoordinatesList, [[Line, Col]]),
	(Col < 8 -> NewCol is Col+1, NewLine is Line;
	Col == 8 -> NewLine is Line+1, NewCol is 0,
	findEmptyCell(Board, NewLine, NewCol, CoordinatesList)).
	
validMoves([Head|Tail], ListOfMoves):-
	initCount(Line, Col),
	findEmptyCell(Board, Line, Col, CoordinatesList).
	
	
	
/*
validMoves(Board, ListOfMoves):- 
	findall(Board, insertPiece(Board, Line, Col, 0, NewBoard), ListOfMoves).
	
	
	
	*/
	
	
	
