-module(p12).
-export([decode_modified/1]).

decode_modified(List)->
  p05:reverse(decode_modified(List, [])).


decode_modified([], Result)->
  p07:flatten(Result);

decode_modified([{Multiplicator, _Element}|T], Result)->
  decode_modified(T, [p15:replicateOne(_Element, Multiplicator)|Result]);

decode_modified([H|T], Result)->
  decode_modified(T, [H|Result]).