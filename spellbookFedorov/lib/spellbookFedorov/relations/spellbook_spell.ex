defmodule SpellbookSpell do
  use Ecto.Schema

  import Ecto.Changeset

  alias SpellbookFedorov.Spellbooks.Entities.Spellbook
  alias SpellbookFedorov.Spells.Entities.Spell

  @primary_key false

  schema "spellbooks_spells" do
    belongs_to :spellbook, Spellbook
    belongs_to :spell, Spell

    timestamps()
  end


  def changeset(struct, params \\ %{}) do
    struct
    |>cast(params, [:spellbook_id, :spell_id])
    |> validate_required([:spellbook_id, :spell_id])
  end
end
