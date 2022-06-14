defmodule SpellbookFedorov.MagicSchools.Entities.MagicSchool do
  use Ecto.Schema

  alias SpellbookFedorov.Spells.Entities.Spell

  import Ecto.Changeset

  @required
  [
    :name,
    :description
  ]

   schema "magic_schools" do
    field :name, :string
    field :description, :string

    has_many :spells, Spell

    timestamps()
   end

   def test()do
    IO.puts("test")
  end


   def create_changeset(%__MODULE__{} = magic_school, attrs) do
    magic_school
    |>cast(attrs,@required)
    |>validate_required(@required)
    # |>validate_inclusion(:school,["illusion","destruction","recovery"])
    # |>validate_inclusion(:type_element,["fire","water","ground"])
  end
end
