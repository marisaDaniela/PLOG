%x_oo
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (DIR)  (X_OO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (ESQ)  (OO_X)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C1 =< 8, 
        C2 is Col - 1, 
        C3 is Col - 2,
        C4 is Col - 3,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%x_ooo
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (DIR)  (X_OOO)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (ESQ)  (OOO_X)
*********************************************************/      
        
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C1 =< 8, 
        C2 is Col - 1, 
        C3 is Col - 2,
        C4 is Col - 3,
        C5 is Col - 4,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%x_oooo
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (DIR)  (X_OOOO)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.

/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (ESQ)  (OOOO_X)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C1 =< 8, 
        C2 is Col - 1, 
        C3 is Col - 2,
        C4 is Col - 3,
        C5 is Col - 4,
        C6 is Col - 5,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (DIR)  (X_OOOOO)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C6, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (ESQ)  (OOOOO_X)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C1 =< 8, 
        C2 is Col - 1, 
        C3 is Col - 2,
        C4 is Col - 3,
        C5 is Col - 4,
        C6 is Col - 5,
        C7 is Col - 6,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C6, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (DIR)  (X_OOOOO)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, Line, C6, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, Line, C7, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
/********************************************************
                FLIPS PARA O CASO 1 NA HORIZONTAL (ESQ)  (OOOOO_X)
*********************************************************/      
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C1 =< 1, 
        C2 is Col - 1, 
        C3 is Col - 2,
        C4 is Col - 3,
        C5 is Col - 4,
        C6 is Col - 5,
        C7 is Col - 6,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, Line, C6, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, Line, C7, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
        

        
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (DOWN)
*********************************************************/

checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C1 >= 1, 
        C2 is Line + 1, 
        C3 is Line + 2,
        C4 is Line + 3,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (UP)
*********************************************************/

checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C1 =< 8, 
        C2 is Line - 1, 
        C3 is Line - 2,
        C4 is Line - 3,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%x_ooox
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (DOWN)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C1 >= 1, 
        C2 is Line + 1, 
        C3 is Line + 2,
        C4 is Line + 3,
        C5 is Line + 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (UP)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C1 =< 8, 
        C2 is Line - 1, 
        C3 is Line - 2,
        C4 is Line - 3,
        C5 is Line - 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%x_oooox
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (DOWN)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C1 >= 1, 
        C2 is Line + 1, 
        C3 is Line + 2,
        C4 is Line + 3,
        C5 is Line + 4,
        C6 is Line + 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.

/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (UP)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C1 =< 8, 
        C2 is Line - 1, 
        C3 is Line - 2,
        C4 is Line - 3,
        C5 is Line - 4,
        C6 is Line - 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%x_ooooo
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (DOWN)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C1 >= 1, 
        C2 is Line + 1, 
        C3 is Line + 2,
        C4 is Line + 3,
        C5 is Line + 4,
        C6 is Line + 5,
        C7 is Line + 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_ooooo
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (UP)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C1 =< 8, 
        C2 is Line - 1, 
        C3 is Line - 2,
        C4 is Line - 3,
        C5 is Line - 4,
        C6 is Line - 5,
        C7 is Line - 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_oooooo
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (DOWN)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C1 >= 1, 
        C2 is Line + 1, 
        C3 is Line + 2,
        C4 is Line + 3,
        C5 is Line + 4,
        C6 is Line + 5,
        C7 is Line + 6,
        %C8 is Col + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 \= Player, % para verificar se a seguinte e enemie
        Piece7 \= 0,
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C7, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, NewCw, NewCb),
        insertPiece(Board7, C8, Col, Player, NewBoard).
%x_oooooo
/********************************************************
                FLIPS PARA O CASO 1 NA VERTICAL  (UP)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C1 =< 8, 
        C2 is Line - 1, 
        C3 is Line - 2,
        C4 is Line - 3,
        C5 is Line - 4,
        C6 is Line - 5,
        C7 is Line - 6,
        %C8 is Col + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 \= Player, % para verificar se a seguinte e enemie
        Piece7 \= 0,
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C7, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, NewCw, NewCb),
        insertPiece(Board7, C8, Col, Player, NewBoard).

        
%-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL  (_XOO)
*********************************************************/
%_xoo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 == Player,% para verificar se a seguinte e igual a minha
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, Line, C4, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, Line, C2, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL (ESQ)  (OOX_)
*********************************************************/
%_xoo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 == Player,% para verificar se a seguinte e igual a minha
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, Line, C4, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, Line, C2, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%_xooo
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL 
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%_xooo
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL (ESQ)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.

/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL  (OOX_)
*********************************************************/
%x_oooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL (ESQ) (OOX_)
*********************************************************/
%x_oooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL   (OOX_)
*********************************************************/
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
        C7 is Col + 7,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C6, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL (ESQ)  (OOX_)
*********************************************************/
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
        C7 is Col - 7,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C6, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_oooooo
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL  (OOX_)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
        C7 is Col + 7,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C6, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, Line, C7, Player, NewBoard),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, NewCw, NewCb).

%x_oooooo
/********************************************************
                FLIPS PARA O CASO 2 NA HORIZONTAL (ESQ)  (OOX_)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
        C7 is Col - 7,
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
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C3, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C4, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw7, Cb7),
        insertPiece(Board4, Line, C5, Player, Board5),
        counterInc(Player, Cb7, Cw7, Cw8, Cb8),
        counterDec(Player, Cb8, Cw8, Cw9, Cb9),
        insertPiece(Board5, Line, C6, Player, Board6),
        counterInc(Player, Cb9, Cw9, Cw10, Cb10),
        counterDec(Player, Cb10, Cw10, Cw11, Cb11),
        insertPiece(Board6, Line, C7, Player, NewBoard),
        counterInc(Player, Cb11, Cw11, Cw12, Cb12),
        counterDec(Player, Cb12, Cw12, NewCw, NewCb).
        
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL  (_XOO)
*********************************************************/
%_xoo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a seguinte e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (UP) (_XOO)
*********************************************************/
%_xoo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a seguinte e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%_xooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (DOWN) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%_xooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (UP) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.

%x_oooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (DOWN) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%x_oooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (UP) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,% para verificar se a anterior e igual a minha
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (DOWN) (_XOO)
*********************************************************/
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        C7 is Line + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, 
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, 
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, 
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, 
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, 
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (UP) (_XOO)
*********************************************************/
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        C7 is Line - 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, 
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, 
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, 
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, 
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, 
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_oooooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (DOWN) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        C7 is Line + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, 
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, 
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, 
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, 
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, 
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 \= Player, 
        Piece7 \= 0,
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C7, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, NewCw, NewCb),
        insertPiece(Board7, C8, Col, Player, NewBoard).
        
%x_oooooo
/********************************************************
                FLIPS PARA O CASO 2 NA VERTICAL (UP) (_XOO)
*********************************************************/
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        C7 is Line - 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 == Player,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, 
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, 
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, 
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, 
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, 
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 \= Player, 
        Piece7 \= 0,
        insertPiece(CurrBoard, C2, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C3, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C4, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C5, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C6, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C7, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, NewCw, NewCb),
        insertPiece(Board7, C8, Col, Player, NewBoard).
        
/***************************************************************************************
                                        CASO 3 - _ooox
****************************************************************************************/

%_oox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a seguinte e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C4, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%_oox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a seguinte e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C4, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.

%_ooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, Line, C4, Piece4), 
        Piece4 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C5, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%_ooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, Line, C2, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, Line, C3, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, Line, C4, Piece4), 
        Piece4 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C5, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.

%_oooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece5 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C6, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%_oooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece5 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C6, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
        C7 is Col + 7,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece6 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C7, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
        C7 is Col - 7,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece6 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, Line, C7, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col + 1, 
        C2 is Col + 2, 
        C3 is Col + 3,
        C4 is Col + 4,
        C5 is Col + 5,
        C6 is Col + 6,
        C7 is Col + 7,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece7 == Player, % para verificar se a seguinte e enemie
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, Line, C6, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, Line, C7, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Col - 1, 
        C2 is Col - 2, 
        C3 is Col - 3,
        C4 is Col - 4,
        C5 is Col - 5,
        C6 is Col - 6,
        C7 is Col - 7,
        getPiece(CurrBoard, Line, C1, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
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
        Piece7 == Player, % para verificar se a seguinte e enemie
        insertPiece(CurrBoard, Line, C1, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, Line, C2, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, Line, C3, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, Line, C4, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, Line, C5, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, Line, C6, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, Line, C7, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
/***************************************************************************************
                                        CASO 3 - _ooox (VERTICAL)
****************************************************************************************/

%_oox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a seguinte e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.
        
%_oox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a seguinte e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a next e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C4, Col, Piece4),
        (Piece4 == Player  ; 
        Piece4 == 0) ->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, NewBoard),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, NewCw, NewCb);
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0.

%_ooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.
        
%_ooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C5, Col, Piece5),
        (Piece5 == Player ; Piece5 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, NewBoard),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, NewCw, NewCb);
        Piece5 \= Player,
        Piece5 \= 0.

%_oooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%_oooox
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C6, Col, Piece6),
        (Piece6 == Player ; Piece6 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, NewBoard),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, NewCw, NewCb);
        Piece6 \= Player,
        Piece6 \= 0.
        
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        C7 is Line + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C5, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_ooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        C7 is Line - 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 == Player, % para verificar se a seguinte e enemie
        getPiece(CurrBoard, C7, Col, Piece7),
        (Piece7 == Player ; Piece7 == 0)->
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C5, Col, Player, NewBoard),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, NewCw, NewCb);
        Piece7 \= Player,
        Piece7 \= 0.
        
%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line + 1, 
        C2 is Line + 2, 
        C3 is Line + 3,
        C4 is Line + 4,
        C5 is Line + 5,
        C6 is Line + 6,
        C7 is Line + 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 == Player, % para verificar se a seguinte e enemie
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C5, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C6, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, C7, Col, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
%x_oooooo
checkFlipR(CurrBoard, Line, Col, Player, NewBoard, Cb, Cw, NewCw, NewCb):-
        C1 is Line - 1, 
        C2 is Line - 2, 
        C3 is Line - 3,
        C4 is Line - 4,
        C5 is Line - 5,
        C6 is Line - 6,
        C7 is Line - 7,
        getPiece(CurrBoard, C1, Col, Piece1),
        Piece1 \= Player,% para verificar se a anterior e igual a minha
        Piece1 \= 0,
        getPiece(CurrBoard, C2, Col, Piece2), 
        Piece2 \= Player, % para verificar se a seguinte e enemie
        Piece2 \= 0,
        getPiece(CurrBoard, C3, Col, Piece3), 
        Piece3 \= Player, % para verificar se a seguinte e enemie
        Piece3 \= 0,
        getPiece(CurrBoard, C4, Col, Piece4), 
        Piece4 \= Player, % para verificar se a seguinte e enemie
        Piece4 \= 0,
        getPiece(CurrBoard, C5, Col, Piece5), 
        Piece5 \= Player, % para verificar se a seguinte e enemie
        Piece5 \= 0,
        getPiece(CurrBoard, C6, Col, Piece6), 
        Piece6 \= Player, % para verificar se a seguinte e enemie
        Piece6 \= 0,
        getPiece(CurrBoard, C7, Col, Piece7), 
        Piece7 == Player, % para verificar se a seguinte e enemie
        insertPiece(CurrBoard, C1, Col, Player, Board2),
        counterInc(Player, Cb, Cw, Cw1, Cb1),
        counterDec(Player, Cb1, Cw1, Cw2, Cb2),
        insertPiece(Board2, C2, Col, Player, Board3),
        counterInc(Player, Cb2, Cw2, Cw3, Cb3),
        counterDec(Player, Cb3, Cw3, Cw4, Cb4),
        insertPiece(Board3, C3, Col, Player, Board4),
        counterInc(Player, Cb4, Cw4, Cw5, Cb5),
        counterDec(Player, Cb5, Cw5, Cw6, Cb6),
        insertPiece(Board4, C4, Col, Player, Board5),
        counterInc(Player, Cb6, Cw6, Cw7, Cb7),
        counterDec(Player, Cb7, Cw7, Cw8, Cb8),
        insertPiece(Board5, C5, Col, Player, Board6),
        counterInc(Player, Cb8, Cw8, Cw9, Cb9),
        counterDec(Player, Cb9, Cw9, Cw10, Cb10),
        insertPiece(Board6, C6, Col, Player, Board7),
        counterInc(Player, Cb10, Cw10, Cw11, Cb11),
        counterDec(Player, Cb11, Cw11, Cw12, Cb12),
        insertPiece(Board7, C7, Col, Player, NewBoard),
        counterInc(Player, Cb12, Cw12, Cw13, Cb13),
        counterDec(Player, Cb13, Cw13, NewCw, NewCb).
        
checkFlipR(CurrBoard, Line, Col, Player, CurrBoard, Cb, Cw, NewCw, NewCb):-
        NewCw is Cw,
        NewCb is Cb.
                