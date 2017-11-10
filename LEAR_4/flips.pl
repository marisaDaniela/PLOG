%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard):-
	C1 is Col - 1, % para verificar se a anterior e igual a minha
	C1 >= 1, 
	C2 is Col + 1, 
	C3 is Col + 2,
	getPiece(CurrBoard, Line, C1, Piece1),
	Piece1 == Player,
	getPiece(CurrBoard, Line, C2, Piece2), 
	Piece2 \= Player,
	Piece2 \= 0,!,
	insertPiece(CurrBoard, Line, C2, Player, NewBoard).
	
checkFlipR(CurrBoard, Line, Col, Player, CurrBoard).
	
%Econtrar o limite e fazer recursividade para tras


	
	
	