defmodule SpellbookOne.Repo.Migrations.CreateSpellsSpellbooks do
  use Ecto.Migration

  def change do
    create table (:spellbooks_spells) do
      add :spellbook_id, references(:spellbooks)
      add :spell_id, references(:spells)
      add :description, :text

      timestamps()
    end

    create unique_index(:spellbooks_spells, [:spellbook_id, :spell_id])
  end
end
