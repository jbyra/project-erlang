-module(erlang_cowboy_app).
-behaviour(application).

-export([start/2]).
-export([stop/1]).

start(_Type, _Args) ->
	Dispatch = cowboy_router:compile([
		{ '_', [
			{"/", cowboy_static, {priv_file, erlang_cowboy, "index.html"}},
			{"/handler", sample_handler, []},
			{"/[...]", cowboy_static, {priv_dir, erlang_cowboy, "static",
				[{mimetypes, cow_mimetypes, all}]}}

	]}]),

	{ok, _} = cowboy:start_http(http, 100, [{port, 8080}],
				[{env, [{dispatch, Dispatch}]}]),
	erlang_cowboy_sup:start_link().

stop(_State) ->
	ok.
