defmodule SpellbookOne.Spellbooks.Commands.DeleteSpellbook do
  alias SSpellbookOne.Repo
  alias SpellbookOne.Spellbooks.Entities.Spellbook

  def process(%Spellbook{} = spellbook) do
    Repo.delete(spellbook)
  end

end
