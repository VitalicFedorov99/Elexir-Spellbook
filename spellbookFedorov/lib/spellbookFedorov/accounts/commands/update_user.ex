defmodule SpellbookFedorov.Accounts.Commands.UpdateUser do
  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User

  def process(%User{}=user,attrs) do
    user
    |>User.update_changeset(attrs)
    |>Repo.update()
  end

end
