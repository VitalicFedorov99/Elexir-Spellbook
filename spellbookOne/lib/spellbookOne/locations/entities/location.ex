defmodule SpellbookOne.Locations.Entities.Location do
  use Ecto.Schema

  import Ecto.Changeset
  @required [
   :name,
   :description
   ]


   schema "locations" do
    field :name, :string
    field :description, :string
    many_to_many :spells, SpellbookOne.Spells.Entities.Spell , join_through: "spell_locations"
    timestamps()
   end

   def create_changeset(%__MODULE__{} = location, attrs) do
    location
    |>cast(attrs,@required)
    |>validate_required(@required)
  end
end
