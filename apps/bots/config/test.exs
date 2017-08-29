use Mix.Config

# Configure your database
config :bots, Bots.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "bots_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
