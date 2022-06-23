defmodule SpellbookOne.Repo.Migrations.CreateSpellsLocations do
  use Ecto.Migration

  def change do
    create table(:spell_locations) do
      add :spell_id, references(:spells)
      add :location_id, references(:locations)
      add :description, :text


       timestamps()
    end
    create unique_index(:spell_locations, [:spell_id, :location_id])
  end
end
