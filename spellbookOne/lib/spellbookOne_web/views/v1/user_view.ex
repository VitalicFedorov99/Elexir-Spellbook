defmodule SpellbookOneWeb.V1.UserView do
  use SpellbookOneWeb, :view

  def render("create.json", %{
        user: user,
        access_token: access_token,
        refresh_token: refresh_token
      }) do
    %{
      access_token: access_token,
      refresh_token: refresh_token,
      user: %{
        email: user.email
      }
    }
  end
end
