%x_oox
/********************************************************
		FLIPS PARA O CASO 1 NA HORIZONTAL  (X_OO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, 
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	C4 is Col + 3,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,% para verificar se a anterior e igual a minha
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player, % para verificar se a seguinte e enemie
	Piece2 \= 0,
	getPiece(CurrBoard, Line, C3, Piece3), 
	Piece3 \= Player, % para verificar se a seguinte e enemie
	Piece3 \= 0,
	getPiece(CurrBoard, Line, C4, Piece4),
	(Piece4 == Player  ; 
	Piece4 == 0) ->
	insertPiece(CurrBoard, Line, C2, Player, Board2),
	insertPiece(Board2, Line, C3, Player, NewBoard);
	Piece4 \= Player, % para verificar se a seguinte e enemie
	Piece4 \= 0.
	
%x_ooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, 
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	C4 is Col + 3,
	C5 is Col + 4,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,% para verificar se a anterior e igual a minha
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player, % para verificar se a seguinte e enemie
	Piece2 \= 0,
	getPiece(CurrBoard, Line, C3, Piece3), 
	Piece3 \= Player, % para verificar se a seguinte e enemie
	Piece3 \= 0,
	getPiece(CurrBoard, Line, C4, Piece4), 
	Piece4 \= Player, % para verificar se a seguinte e enemie
	Piece4 \= 0,
	getPiece(CurrBoard, Line, C5, Piece5),
	(Piece5 == Player ; Piece5 == 0)->
	insertPiece(CurrBoard, Line, C2, Player, Board2),
	insertPiece(Board2, Line, C3, Player, Board3),
	insertPiece(Board3, Line, C4, Player, NewBoard);
	Piece5 \= Player,
	Piece5 \= 0.
	
%x_oooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, 
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	C4 is Col + 3,
	C5 is Col + 4,
	C6 is Col + 5,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,% para verificar se a anterior e igual a minha
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player, % para verificar se a seguinte e enemie
	Piece2 \= 0,
	getPiece(CurrBoard, Line, C3, Piece3), 
	Piece3 \= Player, % para verificar se a seguinte e enemie
	Piece3 \= 0,
	getPiece(CurrBoard, Line, C4, Piece4), 
	Piece4 \= Player, % para verificar se a seguinte e enemie
	Piece4 \= 0,
	getPiece(CurrBoard, Line, C5, Piece5), 
	Piece5 \= Player, % para verificar se a seguinte e enemie
	Piece5 \= 0,
	getPiece(CurrBoard, Line, C6, Piece6),
	(Piece6 == Player ; Piece6 == 0)->
	insertPiece(CurrBoard, Line, C2, Player, Board2),
	insertPiece(Board2, Line, C3, Player, Board3),
	insertPiece(Board3, Line, C4, Player, Board4),
	insertPiece(Board4, Line, C5, Player, NewBoard);
	Piece6 \= Player,
	Piece6 \= 0.
	
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, 
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	C4 is Col + 3,
	C5 is Col + 4,
	C6 is Col + 5,
	C7 is Col + 6,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,% para verificar se a anterior e igual a minha
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player, % para verificar se a seguinte e enemie
	Piece2 \= 0,
	getPiece(CurrBoard, Line, C3, Piece3), 
	Piece3 \= Player, % para verificar se a seguinte e enemie
	Piece3 \= 0,
	getPiece(CurrBoard, Line, C4, Piece4), 
	Piece4 \= Player, % para verificar se a seguinte e enemie
	Piece4 \= 0,
	getPiece(CurrBoard, Line, C5, Piece5), 
	Piece5 \= Player, % para verificar se a seguinte e enemie
	Piece5 \= 0,
	getPiece(CurrBoard, Line, C6, Piece6), 
	Piece6 \= Player, % para verificar se a seguinte e enemie
	Piece6 \= 0,
	getPiece(CurrBoard, Line, C7, Piece7),
	(Piece7 == Player ; Piece7 == 0)->
	insertPiece(CurrBoard, Line, C2, Player, Board2),
	insertPiece(Board2, Line, C3, Player, Board3),
	insertPiece(Board3, Line, C4, Player, Board4),
	insertPiece(Board4, Line, C5, Player, Board5),
	insertPiece(Board5, Line, C6, Player, NewBoard);
	Piece7 \= Player,
	Piece7 \= 0.
	
%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, 
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	C4 is Col + 3,
	C5 is Col + 4,
	C6 is Col + 5,
	C7 is Col + 6,
	%C8 is Col + 7,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,% para verificar se a anterior e igual a minha
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player, % para verificar se a seguinte e enemie
	Piece2 \= 0,
	getPiece(CurrBoard, Line, C3, Piece3), 
	Piece3 \= Player, % para verificar se a seguinte e enemie
	Piece3 \= 0,
	getPiece(CurrBoard, Line, C4, Piece4), 
	Piece4 \= Player, % para verificar se a seguinte e enemie
	Piece4 \= 0,
	getPiece(CurrBoard, Line, C5, Piece5), 
	Piece5 \= Player, % para verificar se a seguinte e enemie
	Piece5 \= 0,
	getPiece(CurrBoard, Line, C6, Piece6), 
	Piece6 \= Player, % para verificar se a seguinte e enemie
	Piece6 \= 0,
	getPiece(CurrBoard, Line, C7, Piece7), 
	Piece7 \= Player, % para verificar se a seguinte e enemie
	Piece7 \= 0,
	insertPiece(CurrBoard, Line, C2, Player, Board2),
	insertPiece(Board2, Line, C3, Player, Board3),
	insertPiece(Board3, Line, C4, Player, Board4),
	insertPiece(Board4, Line, C5, Player, Board5),
	insertPiece(Board5, Line, C5, Player, Board6),
	insertPiece(Board6, Line, C6, Player, Board7),
	insertPiece(Board7, Line, C7, Player, NewBoard).
	
checkFlipR(CurrBoard, Line, Col, Player, CurrBoard).
	
/********************************************************
		FLIPS PARA O CASO 2 NA HORIZONTAL  (_XOO)
*********************************************************/


	
	
	