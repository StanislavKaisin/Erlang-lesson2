-module(p02).
-export([but_last/1]).

but_last([_SecondLast, _Last])->
  [_SecondLast,_Last];
  but_last([_|T])->but_last(T).