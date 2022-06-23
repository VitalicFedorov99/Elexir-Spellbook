defmodule SpellbookOne.Accounts.Guardian.ErrorHandler do
  use SpellbookOneWeb, :controller

  alias SpellbookOne.Changeset.Error
  alias SpellbookOneWeb.ErrorView

  def auth_error(conn, {type, _reason}, _opts) do
    error =
    type
    |>to_string()
    |>Error.auth_error()

    conn
    |> put_status(401)
    |> put_view(ErrorView)
    |> render("401.json", error: error)
  end
end
