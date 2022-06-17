defmodule SpellbookFedorov.Repo.Migrations.AddSchoolIdInSpells do
  use Ecto.Migration

  def change do
    alter table(:spells) do
      add :school_id, references(:school)
    end

  end
end
