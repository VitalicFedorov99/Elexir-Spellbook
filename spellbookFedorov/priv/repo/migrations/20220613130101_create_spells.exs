defmodule SpellbookFedorov.Repo.Migrations.CreateSpells do
  use Ecto.Migration

  def change do
    alert table(:spells) do
      add :name, :string, null: false
      add :description, :text
      add :level, :integer
      add :type_element, :string, null: false
      add :magic_school_id, references(:magic_schools)

      timestamps()
  end

  create unique_index(:spells, [:name])
 end
end
