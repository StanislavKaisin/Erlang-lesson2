-module(p01).
-export([last/1]).

last([_Last])->
  _Last;
last([_|T])->last(T).
