defmodule SpellbookFedorov.Repo.Migrations.CreateLocationSpells do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :description, :string

      timestamps()
    end
  end
end
