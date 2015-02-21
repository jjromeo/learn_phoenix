defmodule LearnPhoenix.Endpoint do
  use Phoenix.Endpoint, otp_app: :learn_phoenix

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :learn_phoenix,
    only: ~w(css images js favicon.ico robots.txt)

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_learn_phoenix_key",
    signing_salt: "/i8a46B3",
    encryption_salt: "bd5mVYe8"

  plug :router, LearnPhoenix.Router
end
