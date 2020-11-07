-module(p15).
-export([replicate/2, replicateOne/2]).

replicate(List, Multiplicator)->
  p05:reverse(replicate(List, Multiplicator, [])).


replicate([], _, Result)->
   p07:flatten(Result);

replicate([H|T], Multiplicator, Result)->
  replicate(T, Multiplicator, [replicateOne(H, Multiplicator)|Result]).



replicateOne(_Element, Multiplicator)->
  replicateOne(_Element, Multiplicator, []).

replicateOne(_Element, 0, Result)->
  Result;
replicateOne(_Element, Multiplicator, Result)->
  replicateOne(_Element,  Multiplicator-1, [_Element|Result]).