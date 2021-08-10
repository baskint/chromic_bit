defmodule ChromicBitWeb.PageController do
  use ChromicBitWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
