defmodule SpellbookFedorov.Schools.Commands.CreateSchool do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Schools.Entities.School

  def process(attrs) do
    %School{}
    |> School.create_changeset(attrs)
    |> Repo.insert()
  end
end
