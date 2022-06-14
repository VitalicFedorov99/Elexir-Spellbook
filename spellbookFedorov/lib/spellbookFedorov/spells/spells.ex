defmodule SpellbookFedorov.Spells do
  alias SpellbookFedorov.Spells.Commands.
  {
    CreateSpell
  }

  alias SpellbookFedorov.Spells.Queries.
  {
    GetSpell,
    ListSpells
  }

  defdelegate create_spell(attrs),  to: CreateSpell, as: :process

  defdelegate get_spell(id), to: GetSpell, as: :process
  defdelegate list_spells(params), to: ListSpells, as: :process


end
