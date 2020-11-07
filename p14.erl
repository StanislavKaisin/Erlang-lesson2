-module(p14).
-export([duplicate/1]).

duplicate(List)->
  p15:replicate(List, 2).