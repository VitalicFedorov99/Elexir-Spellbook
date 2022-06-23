defmodule SpellbookOne.Repo.Migrations.CreateRang do
  use Ecto.Migration

  def change do
    create table(:rangs) do
      add :name, :string
      add :description, :string

       timestamps()
    end
    create unique_index(:rangs, [:name])
  end
end
