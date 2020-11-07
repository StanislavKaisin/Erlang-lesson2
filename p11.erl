-module(p11).
-export([encode_modified/1]).

encode_modified(List)->
  ModifiedList=p10:encode(List),
  p05:reverse(encode_modified(ModifiedList, [])).

encode_modified([], Result)->
  Result;


encode_modified([{1, _Element}|T], Acc)->
  encode_modified(T, [_Element|Acc]);

encode_modified([{_Length, _Element}|T], Acc)->
  encode_modified(T, [{_Length, _Element}|Acc]).
