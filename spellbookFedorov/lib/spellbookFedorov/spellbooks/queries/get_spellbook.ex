defmodule SpellbookFedorov.Spellbooks.Queries.GetSpellbook do
  alias SpellbookFedorov.Repo
  alias SpellbookFedorov.Accounts.Entities.Spellbook

  def process(id) do
    Repo.find(Spellbook, id)
  end

end
