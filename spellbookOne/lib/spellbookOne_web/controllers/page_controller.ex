defmodule SpellbookOneWeb.PageController do
  use SpellbookOneWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
