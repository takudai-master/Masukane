-module(list1).
-compile(export_all).

min(L) -> head(qsort(L)).

head([H|T]) -> H.

qsort([]) -> [];
qsort([Pivot|T]) -> qsort([X||X<-T,X<Pivot])
++[Pivot]++
qsort([X||X<-T,X>=Pivot]).