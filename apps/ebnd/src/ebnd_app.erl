-module(ebnd_app).
-behaviour(application).

-export([start/2,
         stop/1]).

start(_StartType, _StartArgs) ->
    io:format("Hello World~n"),
    ok.
%    ebnd_sup:start_link().

stop(_State) ->
    ok.
