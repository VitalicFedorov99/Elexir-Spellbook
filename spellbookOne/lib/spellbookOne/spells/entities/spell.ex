defmodule SpellbookOne.Spells.Entities.Spell do
  use Ecto.Schema

  alias SpellbookOne.Schools.Entities.School
  alias SpellbookOne.Spellbooks.Entities.Spellbook
  alias SpellbookOne.Rangs.Entities.Rang
  import Ecto.Changeset
  @required [
   :name,
  #  :type_element,
  #  :school,
  #  :level
   ]


   schema "spells" do
    field :name, :string
    field :description, :string
    field :time, :integer
    field :cost, :integer

    belongs_to :school, School
    belongs_to :rangs, Rang

    many_to_many :locations, SpellbookFedorov.Locations.Entities.Location, join_through: "spell_locations"
    many_to_many :spellbooks, Spellbook, join_through: "spellbooks_spells"
    timestamps()
   end

   def create_changeset(%__MODULE__{} = spell, attrs) do
    spell
    |>cast(attrs,@required)
    |>validate_required(@required)
    # |>validate_inclusion(:school,["illusion","destruction","recovery"])
    # |>validate_inclusion(:type_element,["fire","water","ground"])
  end
end
