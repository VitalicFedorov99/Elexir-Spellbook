defmodule  SpellbookFedorov.Schools do
  alias SpellbookFedorov.Schools.Commands.
  {
    CreateSchool
  }

  alias SpellbookFedorov.Schools.Queries.
  {
    GetSchool
  }

  defdelegate create_school(attrs), to: CreateSchool, as: :process
  defdelegate get_school(id), to: GetSchool, as: :process
end
