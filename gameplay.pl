getElpos(1, [Elemento|_], Elemento).
getElpos(Pos, [_|Resto], Elemento):-
        Pos>1,
        Next is Pos-1,
        getElpos(Next, Resto, Elemento).

getPiece(Board, NLine, NCol, Piece):-
        getElpos(NLine, Board, Line),
        getElpos(NCol, Line, Piece). 


setInCol(1, [_|Resto], Piece, [Piece|Resto]):-
        %write('setInCol'),
        setInCol(1, [_|Resto], Piece, [Piece|Resto]).
setInCol(Pos, [X|Resto], Piece, [X|NewResto]):-
        %write('setInCol2'),
        Pos>1,
        Next is Pos-1,
        setInCol(Next, Resto, Piece, NewResto).

setInLine(1, [Line|Resto], NCol, Piece, [NewLine|Resto]):-
        write('setInLine'),
        setInCol(NCol, Line, Piece, NewLine).
setInLine(Pos, [Line|Resto], NCol, Piece, [Line|NewResto]):-
        write('setInLine2'),
        Pos>1,
        Next is Pos-1,
        setInLine(Next, Resto, NCol, Piece, NewResto).

insertPiece(OldBoard, NLine, NCol, Piece, NewBoard):-
        write('InsertPiece'),
        setInLine(NLine, OldBoard, NCol, Piece, NewBoard).

movePlace(Line, Col):-
        write('Choose a place to set a piece.'), nl,
        write('Line: '), getNum(Line),
        write('Col: '), getNum(Col), nl. 
%fazer restrições de lugar

makeMove(CurrBoard, NewBoard, Player):-
        write('MakeMove'),
        %movePlace(Line, Col),
        insertPiece(CurrBoard, 1, 1, Player, NewBoard).
