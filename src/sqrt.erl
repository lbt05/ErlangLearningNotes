-module(sqrt).
-export([sqrt/1,stacktrack/1]).

sqrt(X) when X<0 ->
   erlang:error({squareRootNegativeArgument,X});
sqrt(X) ->
   math:sqrt(X).
stacktrack(X) ->
   try (sqrt(X)) 
   catch
     error:X -> {X,erlang:get_stacktrack()}
   end.
