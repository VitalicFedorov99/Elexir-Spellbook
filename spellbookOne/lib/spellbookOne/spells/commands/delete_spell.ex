defmodule SpellbookOne.Spells.Commands.DeleteSpell do
  alias SpellbookOne.Repo
  alias SpellbookOne.Spells.Entities.Spell

  def process(%Spell{} = spell) do
    Repo.delete(spell)
  end

end
