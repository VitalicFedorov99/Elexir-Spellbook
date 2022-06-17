defmodule SpellbookFedorov.Repo.Migrations.NewSchoolMagic do
  use Ecto.Migration

  def change do
    create table(:school) do
      add :name, :string
      add :description, :string
    end
  end
end
