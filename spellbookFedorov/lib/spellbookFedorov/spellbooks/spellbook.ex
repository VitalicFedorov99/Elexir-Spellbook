defmodule  SpeelbookFedorov.Spellbooks do
  alias SpellbookFedorov.Spellbook.Commands.
  {
    CreateSpellbook
  }

  alias SpellbookFedorov.Spellbook.Queries.
  {
    GetSpellbook
  }

  defdelegate create_spellbook(attrs), to: CreateSpellbook, as: :process
  defdelegate get_spellbook(id), to: GetSpellbook, as: :process
end
