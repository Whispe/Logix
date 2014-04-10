:- lib(ic).

isotree(nil,nil).
isotree(t(X,Left1,Right1),t(X,Left2,Right2)) :- isotree(Left1,Left2), isotree(Right1,Right2).
isotree(t(X,Left1,Right1),t(X,Left2,Right2)) :- isotree(Left1,Right2), isotree(Right1,Left2).
