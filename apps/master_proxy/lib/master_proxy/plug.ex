defmodule MasterProxy.Plug do
  import Plug.Conn

  def init(options) do
    options
  end

  def call(conn, _opts) do
    conn = Plug.Conn.fetch_query_params(conn)
    app = conn.params["app"] || "bots_web"
    module = Module.safe_concat([Macro.camelize(app), Endpoint])

    apply(module, :call, [conn, []])
  end
end