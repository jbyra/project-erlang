{application, erlang_cowboy, [
	{description, "New project"},
	{vsn, "0.0.1"},
	{modules, ['erlang_cowboy_app','erlang_cowboy_sup']},
	{registered, [erlang_cowboy_sup]},
	{applications, [kernel,stdlib]},
	{mod, {erlang_cowboy_app, []}}
]}.