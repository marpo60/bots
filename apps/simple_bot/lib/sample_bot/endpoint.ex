defmodule SimpleBot.Endpoint do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    Plug.Conn.send_resp(conn, 200, "")
  end
end
