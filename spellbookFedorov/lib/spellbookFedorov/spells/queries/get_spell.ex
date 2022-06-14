defmodule SpellbookFedorov.Spells.Queries.GetSpell do
  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Spells.Entities.Spell

  def process(id) do
    Repo.find(Spell, id)
  end
end
