defmodule SpellbookOne.Repo.Migrations.CreateLocation do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :description, :string
      timestamps()
    end
    create unique_index(:locations, [:name])
  end
end
