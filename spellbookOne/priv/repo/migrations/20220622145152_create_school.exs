defmodule SpellbookOne.Repo.Migrations.CreateSchool do
  use Ecto.Migration

  def change do
    create table(:school) do
      add :name, :string
      add :description, :string
      timestamps()
    end
    create unique_index(:school, [:name])
  end
end
