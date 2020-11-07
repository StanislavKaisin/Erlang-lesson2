-module(p13).
-export([decode/1]).

decode(List)->
  p05:reverse(decode(List, [])).


decode([], Result)->
  p07:flatten(Result);

decode([{Multiplicator, _Element}|T], Result)->
  decode(T, [p15:replicateOne(_Element, Multiplicator)|Result]).