-module(p06).
-export([is_palindrome/1]).

is_palindrome(List)->
  Length=p04:len(List),
  HalfLength=Length div 2,

  HallfList=[], 
  SecondHallfList=[],

  Index=HalfLength,
  LastIndex=Length,
  SecondHallfLength=Length-HalfLength,
  
  getHallfList(List, HallfList, Index, HalfLength)==p05:reverse(getSecondHallfList(List, SecondHallfList, LastIndex, SecondHallfLength)).
  

getHallfList(_, HallfList, 0, _)->
  HallfList;
getHallfList(List, HallfList, Index, HalfLength)->
  getHallfList(List, [p03:element_at(List, Index)|HallfList], Index-1, HalfLength).

getSecondHallfList(_, SecondHallfList, HalfLength, HalfLength)->
  SecondHallfList;
getSecondHallfList(List, SecondHallfList, LastIndex, HalfLength)->
  getSecondHallfList(List, [p03:element_at(List, LastIndex)|SecondHallfList], LastIndex-1, HalfLength).
