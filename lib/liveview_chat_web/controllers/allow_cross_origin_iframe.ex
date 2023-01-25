defmodule LiveviewChatWeb.AllowCrossOriginIframe do
  import Plug.Conn

  def init(opts), do: opts

  # TODO: Be carreful I need to only allow trsuted origins not all
  # https://bytesize.cultivatehq.com/elixir/phoenix/2019/01/22/putting-phoenix-in-an-iframe.html
  # LESSON: This phoenix can be embedded as iframe but it does not work on nextjs or other server side frameworks
  def call(conn, _options) do
    conn
    # |> authenticate_source()
    |> delete_resp_header("x-frame-options")
  end

  # defp authenticate_source(conn) do
  #   # check that source is allowed to delete header
  # end
end
