-module(p08).
-export([compress/1]).

compress(List)->
  p05:reverse(compress(List, [], [])).

compress([], [_], Acc)->
  Acc;

compress([H|T], [], Acc)->
  compress(T, [H], [H|Acc]);

compress([H|T], [H], Acc)->
  compress(T, [H], Acc);


compress([H|T], [_], Acc)->
  compress(T, [H], [H|Acc]).
