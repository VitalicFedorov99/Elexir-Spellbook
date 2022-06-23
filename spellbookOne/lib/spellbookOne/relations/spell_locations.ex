defmodule SpellLocations do
  use Ecto.Schema

  import Ecto.Changeset

  alias SpellbookFedorov.Locations.Entities.Location
  alias SpellbookFedorov.Spells.Entities.Spell

  @primary_key false

  schema "spell_locations" do
    belongs_to :spell, Spell
    belongs_to :location, Location

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |>cast(params, [:location_id, :spell_id])
    |> validate_required([:location_id, :spell_id])
  end
end
