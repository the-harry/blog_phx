mix deps.update --all

mix ecto.drop
mix ecto.setup

exec iex -S mix phx.server
