defmodule SpellbookOne.Schools.Commands.CreateSchool do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Schools.Entities.School

  def process(attrs) do
    %School{}
    |> School.create_changeset(attrs)
    |> Repo.insert()
  end
end
