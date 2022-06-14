defmodule SpellbookFedorovWeb.PageController do
  use SpellbookFedorovWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
