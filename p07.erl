-module(p07).
-export([flatten/1]).

% if last element return new flatten list

flatten(List)->
  FlattenList=[],
  p05:reverse(flatten(List, FlattenList)).
  

flatten([], FlattenList)->
  FlattenList;
flatten([[H|T]|Rest], FlattenList)->
  flatten([H|T]++Rest, FlattenList);
flatten([[]|T], FlattenList)->
  flatten(T, FlattenList);
flatten([H|[]], FlattenList)->
  flatten([], [H|FlattenList]);
flatten([H|T], FlattenList)->
  flatten(T, [H|FlattenList]).

