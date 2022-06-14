defmodule SpellbookFedorov.Repo.Migrations.UpdateSpells do
  use Ecto.Migration

  def change do
    alter table(:spells) do
      # add :name, :string, null: false
      remove :school, :string, null: false
      # add :description, :text
      # add :level, :integer
      # add :type_element, :string, null: false
      add :magic_school_id, references(:magic_schools)

      # timestamps()
  end

 end
end
