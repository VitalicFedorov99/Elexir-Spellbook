defmodule SpellbookFedorov.Repo.Migrations.CreateLocationsSpells do
  use Ecto.Migration

  def change do
    create table(:location_spells) do
      add :spells_id, references(:spells)
      add :locations_id, references(:locations)

      timestamps()
    end
    create unique_index(:location_spells, [:spells_id, :locations_id])
  end
end
