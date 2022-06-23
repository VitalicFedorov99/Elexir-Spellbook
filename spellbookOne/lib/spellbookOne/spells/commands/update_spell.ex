defmodule SpellbookOne.Spells.Commands.UpdateSpell do
  alias SpellbookOne.Repo
  alias SpellbookOne.Spells.Entities.Spell

  def process(%Spell{}=spell,attrs) do
    spell
    |>Spell.update_changeset(attrs)
    |>Repo.update()
  end

end
