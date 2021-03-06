defmodule SpellbookOne.Rangs.Entities.Rang do
  use Ecto.Schema

  alias SpellbookOne.Spells.Entities.Spell

  import Ecto.Changeset
  @required [
   :name,
   :description
   ]


   schema "rangs" do
    field :name, :string
    field :description, :string
    has_many :spells, Spell

    timestamps()
   end

   def create_changeset(%__MODULE__{} = rang, attrs) do
    rang
    |>cast(attrs,@required)
    |>validate_required(@required)
  end
end
