getElpos(1, [Elemento|_], Elemento).
getElpos(Pos, [_|Resto], Elemento):-
        Pos>1,
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
        write('Line: '), getNum(Line), 
        write('Col: '), getNum(Col), nl. 
%fazer restricoes de lugar

makeMove(CurrBoard, NewBoard, Player):-
        write('MakeMove'),
        movePlace(Line, Col),
        Line>=1, Line=<8,%verifica se o local escolhido esta dentro do tabuleiro
        Col>=1, Col=<8,
        getPiece(CurrBoard, Line, Col, Piece), %verifica se ja existe uma peça no local escolhido
        Piece==0,
        insertPiece(CurrBoard, Line, Col, Player, NewBoard).

initCount(Cb, Cw):-
        Cb=0,
        Cw=0.

counterInc(Player, Cb, Cw, NewCw, NewCb):-
       Player==1 -> NewCb is Cb+1,  write(NewCb);
       Player==2 -> NewCw is Cw+1, write(NewCw);
       fail.
/*
cbInc(Cb, NewCb):-
        NewCb is Cb+1,  write(NewCb).

cwInc(Cw, NewCw):-
    NewCw is Cw+1, write(NewCw).*/