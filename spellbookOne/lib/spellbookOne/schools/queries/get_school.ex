defmodule SpellbookOne.Schools.Queries.GetSchool do

  alias  SpellbookOne.Repo
  alias  SpellbookOne.Schools.Entities.School

  def process(id) do
    Repo.find(School, id)
  end
end
