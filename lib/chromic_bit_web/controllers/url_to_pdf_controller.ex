defmodule ChromicBitWeb.UrlToPdfController do
  use ChromicBitWeb, :controller

  def index(conn, _params) do
    ChromicPDF.print_to_pdf({:url, "https://example.net"}, output: "example.pdf")
    text conn, "Showing id 42"
  end
end
