-module(lib_misc).
-export([perms/1,sleep/1]).


perms([]) ->[[]];

perms(L) -> [[H|T] || H <- L, T<-perms(L--[H])].

sleep(T) ->
    receive
    after T ->
            io:format("exit after waiting ~p nanoseconds~n",[T])
    end.
