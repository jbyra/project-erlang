{application, erlang_cowboy, [
    {description, "Hello Erlang!"},
    {vsn, "0.1.0"},
    {modules, ['erlang_cowboy_app','erlang_cowboy_sup','sample_handler']},
    {registered, []},
    {applications, [
        kernel,
        stdlib,
        cowboy
    ]},
    {mod, {erlang_cowboy_app, []}},
    {env, []}
]}.
