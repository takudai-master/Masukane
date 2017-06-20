-module(process_test).
-compile(export_all).

loop() -> loop(8).
%receive
%	{rectangle, Width, Ht} ->
%		io:format("~p~n",[Width * Ht]),
%		loop(7);
%	Other ->
%		io:format("You told ~p~n", [Other]),
%		loop(7)
%end.


loop(0) -> io:format("END");
loop(N) ->
receive
	{rectangle, Width, Ht} ->
		io:format("~p~n",[Width * Ht]),
		loop(N-1);
	Other ->
		io:format("You told ~p~n", [Other]),
		loop(N-1)
end.



%P = spawn(fun process_test:loop/0).
%P ! {rectangle, 2, 5}.