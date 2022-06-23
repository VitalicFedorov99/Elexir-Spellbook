defmodule  SpellbookOne.Schools.Queries.ListSchools do
  alias SpellbookOne.Repo
  alias SpellbookOne.Schools.Entities.School

  def process() do
    Repo.all(School)
  end

end
