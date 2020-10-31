-module(p05).
-export([reverse/1]).

reverse(List)->
  Length=p04:len(List),
  ReverseList=[],
  reverse(List, Length, ReverseList).
  
reverse([H], 1, ReverseList)->
  % io:format("Length: ~p ~n", [Length]),
  % io:format("ReverseList= ~p ~n", [ReverseList]),
  % io:format("H= ~p ~n", [H]),
  [H|ReverseList];
reverse([H|T], Length, ReverseList)->
  % io:format("[H|T]= ~p ~n", [[H|T]]),
  % io:format("Length= ~p ~n", [Length]),
  % io:format("ReverseList= ~p ~n", [ReverseList]),
  reverse(T, Length-1, [H|ReverseList]).