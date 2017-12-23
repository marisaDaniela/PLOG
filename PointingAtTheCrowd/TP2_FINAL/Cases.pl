%Caso da seta apontar para a direita
case(1, Line, Col, N, Board,List, Final) :- 
	NewLine is Line + 1,
	getCell(NewLine, Col, Board, Cell), 
	(Cell = -1 -> (reverse(List, Final), true); 
	(var(Cell) -> case(1, NewLine, Col, N, Board, [Cell|List], Final);
	case(1, NewLine, Col, N, Board, List, Final))).
	
%Caso da seta apontar para a diagonal direita inferior
case(2, Line, Col, N, Board, List, Final) :-
	NewCol is Col + 1,
	((Col >= N,								
	getCell(Line, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(2,Line, NewCol, N, Board, [Cell|List], Final);
	case(2, Line, NewCol, N, Board, List, Final))));
	
	(NewLine is Line + 1,
	getCell(NewLine, NewCol, Board, Cell),					
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(2, NewLine, NewCol, N, Board, [Cell|List], Final);
	case(2, NewLine, NewCol, N, Board, List, Final))))).
	
%Caso da seta apontar para a diagonal esquerda inferior
case(3, Line, Col, N, Board, List, Final) :-
	NewCol is Col + 1,
	((Col < N,
	getCell(Line, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(3, Line, NewCol, N, Board, [Cell|List], Final);
	case(3, Line, NewCol, N, Board, List, Final))));
	
	(NewLine is Line-1,
	getCell(NewLine, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(3, NewLine, NewCol, N, Board, [Cell|List], Final);
	case(3, NewLine, NewCol, N, Board, List, Final))))).

%Caso da seta apontar para a esquerda
case(4, Line, Col, N, Board, List, Final) :-
	NewLine is Line - 1,
	getCell(NewLine, Col, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(4, NewLine, Col, N, Board, [Cell|List], Final);
	case(4, NewLine, Col, N, Board, List, Final))).
	
%Caso da seta apontar para a diagonal superior esquerda
case(5, Line, Col, N, Board, List, Final) :-
	NewCol is Col - 1,
	((Col > N,
	getCell(Line, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(5, Line, NewCol, N, Board, [Cell|List], Final);
	case(5, Line, NewCol, N, Board,List, Final))));
	
	(NewLine is Line - 1,
	getCell(NewLine, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(5, NewLine, NewCol, N, Board,[Cell|List], Final);
	case(5, NewLine, NewCol, N, Board, List, Final))))).
	
%Caso da seta apontar para a diagonal superior direita
case(6, Line, Col, N, Board,List, Final) :-
	NewCol is Col - 1,
	((Col =< N, 
	getCell(Line, NewCol, Board, Cell),
	(Cell = -1, reverse(List, Final);
	var(Cell), 
	case(6, Line, NewCol, N, Board,[Cell|List], Final);
	case(6, Line, NewCol, N, Board, List, Final)));
	
	(NewLine is Line + 1,
	getCell(NewLine, NewCol, Board, Cell),
	(Cell = -1 -> (reverse(List, Final), true);
	(var(Cell) -> case(6, NewLine, NewCol, N, Board,[Cell|List], Final);
	case(6, NewLine, NewCol, N, Board, List, Final))))).