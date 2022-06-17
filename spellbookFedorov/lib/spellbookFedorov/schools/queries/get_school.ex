defmodule SpellbookFedorov.Schools.Queries.GetSchool do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Schools.Entities.School

  def process(id) do
    Repo.find(School, id)
  end
end
