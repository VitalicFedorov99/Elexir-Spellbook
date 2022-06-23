defmodule SpellbookOne.Repo.Migrations.CreateSpell do
  use Ecto.Migration

  def change do
    create table(:spells) do
      add :name, :string, null: false
      add :description, :text
      # add :school_id, references(:school)
      add :time, :integer
      add :cost, :integer
      # add :rang_id, references(:rangs)
      timestamps()
    end
  create unique_index(:spells, [:name])
  end
end
