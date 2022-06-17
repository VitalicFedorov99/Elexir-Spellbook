defmodule SpellbookFedorov.Locations.Commands.CreateLocation do

  alias  SpellbookFedorov.Repo
  alias  SpellbookFedorov.Locations.Entities.Location

  def process(attrs) do
    %Location{}
    |> Location.create_changeset(attrs)
    |> Repo.insert()
  end
end
