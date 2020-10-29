-module(p05).
-export([reverse/1]).

reverse([])->
  [];
reverse([_Single])->
  [_Single];
reverse([H|T])->
  % io:format("~p~n", [p01:last([H|T])]),
  reverse([p01:last([H|T])|[T]]).




 %p01:last(_List) 