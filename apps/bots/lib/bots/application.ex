defmodule Bots.Application do
  @moduledoc """
  The Bots Application Service.

  The bots system business domain lives in this application.

  Exposes API to clients such as the `BotsWeb` application
  for use in channels, controllers, and elsewhere.
  """
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    Supervisor.start_link([
      supervisor(Bots.Repo, []),
    ], strategy: :one_for_one, name: Bots.Supervisor)
  end
end
