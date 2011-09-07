-module(ebnd).

-export([start/0,
         stop/0]).

start() ->
    application:start(ebnd_app).

stop() ->
    application:stop(ebnd_app).
