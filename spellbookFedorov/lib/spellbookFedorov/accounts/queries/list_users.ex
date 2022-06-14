defmodule  SpellbookFedorov.Accounts.Queries.ListUsers do
  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User

  def process() do
    Repo.all(User)
  end

end
