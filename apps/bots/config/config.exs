use Mix.Config

config :bots, ecto_repos: [Bots.Repo]

import_config "#{Mix.env}.exs"
