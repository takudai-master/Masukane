-module(list_sum).
-compile(export_all).

sum([]) -> 0;
sum([H|T]) -> H + sum(T).