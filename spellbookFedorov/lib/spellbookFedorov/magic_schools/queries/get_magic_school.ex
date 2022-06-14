defmodule SpellbookFedorov.MagicSchools.Queries.GetMagicSchool do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.MagicSchools.Entities.MagicSchool

  def process(id) do
    Repo.find(MAgicSchool, id)
  end
end
