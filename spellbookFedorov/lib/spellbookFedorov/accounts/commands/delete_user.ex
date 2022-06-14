defmodule SpellbookFedorov.Accounts.Commands.DeleteUser do
  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User

  def process(%User{} = user) do
    Repo.delete(user)
  end

end
