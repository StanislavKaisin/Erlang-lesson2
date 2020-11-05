-module(p09).
-export([pack/1]).

pack(List)->
   p05:reverse(pack(List, [], [], [])).

pack([], [], [], Result)->
  Result;

pack([H|T],[], Acc, Result)->
  pack(T, [H], [H|Acc], Result);

pack([H|T],[H], Acc, Result)->
  pack(T, [H], [H|Acc], Result);

pack([H|T],[_], Acc, Result)->
  pack([H|T], [H], [], [Acc|Result]);

pack([],[_], Acc, Result)->
  pack([], [], [], [Acc|Result]).


% List, [Template], [Acc], [Result]