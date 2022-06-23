defmodule SpellbookOne.Schools.Commands.UpdateSchool do
  alias SpellbookOne.Repo
  alias SpellbookOne.Schools.Entities.School

  def process(%School{}=school,attrs) do
    school
    |>School.update_changeset(attrs)
    |>Repo.update()
  end

end
