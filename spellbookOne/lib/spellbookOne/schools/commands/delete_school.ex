defmodule SpellbookOne.Schools.Commands.DeleteSchool do
  alias SpellbookOne.Repo
  alias SpellbookOne.Schools.Entities.School

  def process(%School{} = school) do
    Repo.delete(school)
  end

end
