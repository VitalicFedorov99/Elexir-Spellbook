defmodule SpellbookFedorov.Repo.Migrations.CreateMagicSchool do
  use Ecto.Migration

  def change do
      create table(:magic_schools) do
        add :name, :string
        add :description, :text

        timestamps()
      end

      create unique_index(:magic_schools, [:name])
  end
end
