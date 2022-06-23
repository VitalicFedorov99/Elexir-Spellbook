defmodule  SpellbookOne.Accounts.Queries.ListUsers do
  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.User

  def process() do
    Repo.all(User)
  end

end
