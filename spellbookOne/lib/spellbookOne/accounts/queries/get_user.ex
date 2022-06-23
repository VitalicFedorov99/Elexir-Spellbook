defmodule SpellbookOne.Accounts.Queries.GetUser do
  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.User

  def process(id) do
    Repo.find(User,id)
  end
end
