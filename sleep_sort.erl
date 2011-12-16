-module(sleep_sort).
-export([test/0,sort/1]).

sort([H|L]) ->
     spawn(sleep_sort,sort,[L]),
     timer:sleep(H),
     io:format("~w~n",[H]) ;
sort([]) -> 
     exit.
test() ->
     sleep_sort:sort([12,3,1234,2222,1234]).
