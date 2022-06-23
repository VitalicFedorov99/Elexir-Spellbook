defmodule SpellbookOne.Spellbooks.Queries.GetSpellbook do
  alias SpellbookOne.Repo
  alias SpellbookOne.Accounts.Entities.Spellbook

  def process(id) do
    Repo.find(Spellbook, id)
  end

end
