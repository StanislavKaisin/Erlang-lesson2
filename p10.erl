-module(p10).
-export([encode/1]).

encode(List)->
  PackedList= p09:pack(List),
  p05:reverse(encode(PackedList, [])).

encode([], Result)->
  Result;

encode([H|T], Result)->
  encode(T, [[p04:len(H), p03:element_at(H, 1)]|Result]).
