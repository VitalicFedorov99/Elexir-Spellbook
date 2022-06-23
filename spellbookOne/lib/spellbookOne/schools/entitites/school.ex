defmodule SpellbookOne.Schools.Entities.School do
  use Ecto.Schema

  # alias SpellbookFedorov.MagicSchools.Entities.MagicSchool
  alias SpellbookOne.Spells.Entities.Spell

  import Ecto.Changeset
  @required [
   :name,
  #  :type_element,
  #  :school,
   :description
   ]


   schema "school" do
    field :name, :string
    field :description, :string
    has_many :spells, Spell

    # field :school, :string
    # field :level, :integer
    # field :type_element, :string

    # belongs_to :magic_school, MagicSchool

    # many_to_many :spellbooks, Spellbook, join_through: "spellbooks_spells"
    # timestamps()
   end

   def create_changeset(%__MODULE__{} = school, attrs) do
    school
    |>cast(attrs,@required)
    |>validate_required(@required)
    # |>validate_inclusion(:school,["illusion","destruction","recovery"])
    # |>validate_inclusion(:type_element,["fire","water","ground"])
  end
end
