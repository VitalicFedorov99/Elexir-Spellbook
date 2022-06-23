defmodule SpellbookOne.Accounts.Commands.UpdateUser do
  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.User

  def process(%User{} = user,attrs) do
    user
    |>User.update_changeset(attrs)
    |>Repo.update()
  end

end
