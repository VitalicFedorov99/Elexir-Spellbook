defmodule SpellbookFedorov.Accounts.Queries.GetUser do
  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.User

  def process(id) do
    Repo.find(User,id)
  end
end
