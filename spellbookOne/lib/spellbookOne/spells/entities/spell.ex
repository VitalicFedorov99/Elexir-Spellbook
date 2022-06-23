defmodule SpellbookOne.Spells.Entities.Spell do
  use Ecto.Schema

  alias SpellbookOne.Schools.Entities.School
  alias SpellbookOne.Spellbooks.Entities.Spellbook
  alias SpellbookOne.Rangs.Entities.Rang
  import Ecto.Changeset
  @required [
   :name,
   :rang_id
  #  :type_element,
  #  :school,
  #  :level
   ]

   @optional [
     :school_id,
    #  :rang_id,
     :locations,
     :spellbooks
   ]

   schema "spells" do
    field :name, :string
    field :description, :string
    field :time, :integer
    field :cost, :integer

    belongs_to :school, School
    belongs_to :rang, Rang

    many_to_many :locations, SpellbookOne.Locations.Entities.Location, join_through: SpellLocations
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

  def update_changeset(%__MODULE__{} = spell, attrs) do
    spell
    spell1 = SpellbookOne.Repo.preload(spell,:locations)
    spell_changeset=change(spell1)
    # spell1_changeset
    # |>cast(attrs,@required)
    # |>validate_required(@required)
     spell_location=put_assoc(spell_changeset,:locations, [attrs.locations])
     spell_location

    # |>Changeset.change()
    # |>put_assoc(:locations,[loc])
    # |>cast(attrs,@required)
    # |>validate_required(@required)
    # |>validate_inclusion(:school,["illusion","destruction","recovery"])
    # |>validate_inclusion(:type_element,["fire","water","ground"])
    # |>put_assoc(:locations,[loc])
  end

  # def update_changeset(%__MODULE__{} = spell, attrs) do
  #     spell
  #    |>SpellbookOne.Repo.preload(:locations)
  #    |>Changeset.change()
  #    |>put_assoc :locations,[attrs.locations]
  # end
end
