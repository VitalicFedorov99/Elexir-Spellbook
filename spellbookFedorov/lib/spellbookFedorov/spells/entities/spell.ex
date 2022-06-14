defmodule SpellbookFedorov.Spells.Entities.Spell do
  use Ecto.Schema

  alias SpellbookFedorov.MagicSchools.Entities.MagicSchool

  import Ecto.Changeset
  @required [
   :name,
  #  :type_element,
  #  :school,
   :level
   ]


   schema "spells" do
    field :name, :string
    field :description, :string
    # field :school, :string
    field :level, :integer
    field :type_element, :string

    belongs_to :magic_school, MagicSchool

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
