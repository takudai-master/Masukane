-module(fact).
-compile(export_all).

fact(1) -> 1;
fact(N) -> N * fact(N-1).

fact2(N) -> fact2(N,1).
fact2(2,F) -> 2*F;
fact2(N,F) -> fact2(N-1,F*N).

% result
%input
% Start = erlang:monotonic_time().
% fact:fact(50000).
% End = erlang:monotonic_time().
% fact:fact2(50000).
% End2 = erlang:monotonic_time().
% End - Start.
% End2 - End.

%output
% 4313728000

% 4321840128

% 4329568256
% 8112128
% 7728128