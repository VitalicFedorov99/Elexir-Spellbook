defmodule  SpellbookOne.Schools do
  alias SpellbookOne.Schools.Commands.
  {
    CreateSchool,
    UpdateSchool,
    DeleteSchool
  }

  alias SpellbookOne.Schools.Queries.
  {
    GetSchool,
    ListSchools
  }

  defdelegate create_school(attrs), to: CreateSchool, as: :process
  defdelegate update_school(school,attrs), to: UpdateSchool, as: :process
  defdelegate delete_school(school), to: DeleteSchool, as: :process

  defdelegate get_school(id), to: GetSchool, as: :process
  defdelegate list_schools(), to: ListSchools, as: :process
end
