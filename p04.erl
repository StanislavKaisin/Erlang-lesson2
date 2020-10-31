-module(p04).
-export([len/1]).

% len([])->
%   0;
% len([_|T])->
%   len(T)+1.

len(List)->
  len(List, 0).

len([_|T], Length)->
  len(T, Length+1);
len([], Length)->
  Length.