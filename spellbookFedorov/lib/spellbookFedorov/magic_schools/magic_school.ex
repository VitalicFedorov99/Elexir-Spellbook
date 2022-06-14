defmodule  SpeelbookFedorov.MagicSchools do
  alias SpellbookFedorov.MagicSchools.Commands.
  {
    CreateMagicSchool
  }

  alias SpellbookFedorov.MagicSchools.Queries.
  {
    GetMagicSchool
  }

  defdelegate create_magic_school(attrs), to: CreateMagicSchool, as: :process
  defdelegate get_magic_school(id), to: GetMagicSchool, as: :process
end
