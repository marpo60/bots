defmodule BotsWeb.PageController do
  use BotsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
