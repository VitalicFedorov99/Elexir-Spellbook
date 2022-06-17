defmodule SpellbookFedorov.Repo.Migrations.UpdateSpellsRemoveMagicSchoolId do
  use Ecto.Migration

  def change do
    alter table(:spells) do
      remove :magic_school_id, references(:magic_schools)
      add :school_id, references(:school)
      add :time, :integer
      add :cost, :integer
      remove :level, :integer
      remove :type_element, :string, null: false
  end
  end
end
