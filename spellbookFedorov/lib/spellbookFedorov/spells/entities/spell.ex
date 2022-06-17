defmodule SpellbookFedorov.Spells.Entities.Spell do
  use Ecto.Schema

  alias SpellbookFedorov.Schools.Entities.School
  alias SpellbookFedorov.Spellbooks.Entities.Spellbook

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
    # field :school, :string
    # field :level, :integer
    # field :type_element, :string
    field :time, :integer
    field :cost, :integer
    belongs_to :school, School

    many_to_many :locations, SpellbookFedorov.Locations.Entities.Location, join_through: "location_spells"
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
