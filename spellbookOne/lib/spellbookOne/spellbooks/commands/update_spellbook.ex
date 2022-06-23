defmodule SpellbookOne.Spellbooks.Commands.UpdateSpellbook do
  alias SpellbookOne.Repo
  alias SpellbookOne.Spellbooks.Entities.Spellbook

  def process(%Spellbook{}=spellbook,attrs) do
    spellbook
    |>Spellbook.update_changeset(attrs)
    |>Repo.update()
  end

end
