defmodule SpellbookOne.Spells do
  alias SpellbookOne.Spells.Commands.
  {
    CreateSpell,
    UpdateSpell,
    DeleteSpell
  }

  alias SpellbookOne.Spells.Queries.
  {
    GetSpell,
    ListSpells
  }

  defdelegate create_spell(attrs),  to: CreateSpell, as: :process
  defdelegate update_spell(spell, attrs), to: UpdateSpell, as: :process
  defdelegate delete_spell(spell), to: DeleteSpell, as: :process

  defdelegate get_spell(id), to: GetSpell, as: :process
  defdelegate list_spells(params), to: ListSpells, as: :process


end
