defmodule SpellbookOne.Repo.Migrations.UpdateSpell do
  use Ecto.Migration

  def change do
    alter table(:spells) do

      add :school_id, references(:school)
      add :rang_id, references(:rangs)
  end
end
end
