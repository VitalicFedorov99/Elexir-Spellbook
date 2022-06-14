defmodule SpellbookFedorov.MagicSchools.Commands.CreateMagicSchool do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.MagicSchools.Entities.MagicSchool

  def process(attrs) do
    %MagicSchool{}
    |> MagicSchool.create_changeset(attrs)
    |> Repo.insert()
  end
end
