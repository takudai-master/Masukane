-module(time).
-compile(export_all).

us_date() -> us_date(tuple_to_list(date())).
us_date([H|T]) -> us_date(T,H).
us_date([H|T],Y) -> us_date(H,T,Y).
us_date(M,[D|T],Y) -> string:join([integer_to_list(M),integer_to_list(D),integer_to_list(Y)],"") .