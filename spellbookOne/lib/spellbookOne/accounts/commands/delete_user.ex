defmodule SpellbookOne.Accounts.Commands.DeleteUser do
  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.User

  def process(%User{} = user) do
    Repo.delete(user)
  end

end
