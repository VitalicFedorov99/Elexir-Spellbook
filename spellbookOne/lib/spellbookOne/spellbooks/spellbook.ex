defmodule  SpellbookOne.Spellbooks do
  alias SpellbookOne.Spellbooks.Commands.
  {
    CreateSpellbook,
    UpdateSpellbook,
    DeleteSpellbook
  }

  alias SpellbookOne.Spellbooks.Queries.
  {
    GetSpellbook,
    ListSpellbooks
  }
  defdelegate create_spellbook(attrs), to: CreateSpellbook, as: :process
  defdelegate update_spellbook(spellbook,attrs), to: UpdateSpellbook, as: :process
  defdelegate delete_spellbook(spellbook), to: DeleteSpellbook, as: :process

  defdelegate get_spellbook(id), to: GetSpellbook, as: :process
  defdelegate list_spellbooks(user, params \\ %{}), to: ListSpellbooks, as: :process

end
